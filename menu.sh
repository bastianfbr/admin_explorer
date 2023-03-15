# Imports
source colors.sh
source commands.sh
source file_explorer.sh

# Fonction pour afficher le menu
function afficher_menu {
    color_text "blanc" "Menu principal :"
    color_text "noir" "1. Infos répertoire courant"
    color_text "noir" "2. //"
    color_text "noir" "3. //"
    color_text "rouge_fonce" "4. Quitter"
}

# Boucle pour afficher le menu et traiter les choix de l'utilisateur
while true; do
    infos_system
    # Afficher le menu
    afficher_menu

    # Demander à l'utilisateur de faire un choix
    read -p "Entrez votre choix : " choix

    # Traiter le choix de l'utilisateur
    case $choix in
        1)
            head
            fichier_repertoire_courant
            nb_sous_repertoires
            ;;
        2)
            command2
            ;;
        3)
            command3
            ;;
        4)
            echo "Au revoir !"
            exit 0
            ;;
        *)
            echo "Choix invalide, veuillez sélectionner une option entre 1 et 4."
            ;;
    esac

    # Attendre que l'utilisateur appuie sur une touche avant de quitter
    read -n 1 -s -r -p "$(color_text "jaune_clair" "Appuyez sur une touche pour revenir au menu...")"
    clear
    echo ""
done
