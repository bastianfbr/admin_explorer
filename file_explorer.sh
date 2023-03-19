function head {
    echo "$(color_text 'blanc' 'Répertoire courant : ')$(color_text 'jaune_fonce' $(pwd))"
}

function fichier_repertoire_courant {
    
     # Obtenir le nombre de fichiers dans le répertoire courant
    num_files=$(ls -1q | wc -l)

    # Obtenir la taille totale des fichiers dans le répertoire courant
    total_size=$(du -sh | awk '{print $1}')

    # Afficher le nombre de fichiers et la taille totale
    echo -e "$(color_text 'jaune_fonce' "Nombre de fichiers : $num_files")"
    echo -e "$(color_text 'jaune_fonce' "Taille totale des fichiers : $total_size")"
}

function nb_sous_repertoires {
    # Récupérer le nombre de sous-répertoires dans le répertoire courant
    nb_subdirs=$(find . -mindepth 1 -maxdepth 1 -type d | wc -l)

    # Afficher le nombre de sous-répertoires
    echo "Il y a $nb_subdirs sous-répertoires dans le répertoire courant."
}

function arborescence {
    ## Indiquer l’arborescence (en permettant de paramétrer une profondeur) du répertoire courant

    # Demander à l'utilisateur de saisir la profondeur
    read -p "Entrez la profondeur de l'arborescence : " depth

    # Afficher l'arborescence
    find . -maxdepth $depth -type d -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

function poids_sous_repertoires {
    result=$(du -sh */)
    echo -e "$(color_text 'jaune_fonce' "Poids sous-repértoires : $result")"
}

function changer_repertoire {
    # Demander le nom du sous-répertoire
    echo "$(color_text 'jaune_fonce' 'Veuillez entrer le nom du sous-répertoire : ')"
    read dossier

    # Vérifier si le dossier existe
    if [ -d "$dossier" ]; then
        cd "$dossier"
        echo "$(color_text 'vert_clair' 'Changement de répertoire effectué.')"
    else
        echo "$(color_text 'rouge_clair' "Le dossier n'existe pas.")"
    fi
}

function chercher_fichiers_date {

    local option=$1

    echo "$(color_text 'jaune_fonce' 'Veuillez entrer la date au format YYYY-MM-DD : ')"
    read dossier
    
    # Vérifier si une date est fournie en paramètre
    if [[ -z "$dossier" ]]; then
        echo "Veuillez fournir une date au format YYYY-MM-DD en paramètre."
        exit 1
    fi

    # Vérifier si la date fournie est valide
    if ! date -d "$dossier" >/dev/null 2>&1; then
        echo "La date fournie n'est pas valide. Veuillez fournir une date au format YYYY-MM-DD."
        exit 1
    fi

    # Récupérer la date en format numérique pour la comparer avec la date de modification des fichiers
    date_num=$(date -d "$dossier" +%s)

    if [[ "$option" == "courant" ]]; then
        # Rechercher les fichiers plus récents que la date spécifiée
        for file in *; do
        if [[ -f "$file" ]]; then
            if [[ $(stat -c %Y "$file") -gt $date_num ]]; then
                echo "$file"
            fi
        fi
        done
    elif [[ "$option" == "sous" ]]; then
        # Rechercher les fichiers plus récents que la date spécifiée dans tous les sous-répertoires du répertoire courant
        find . -type f -newermt "$dossier" -print
    fi
}