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
    nb_subdirs=$(find . -maxdepth 1 -type d | wc -l)

    # Afficher le nombre de sous-répertoires
    echo "Il y a $nb_subdirs sous-répertoires dans le répertoire courant."
}