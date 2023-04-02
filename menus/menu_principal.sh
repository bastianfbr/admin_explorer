# Fonction pour afficher le menu
function menu_principal {
    color_text "cyan_fonce" "============================================="
    color_text "cyan_fonce" "               ADMIN EXPLORER                "
    color_text "cyan_fonce" "============================================="
    echo ""
    color_text "vert_clair" "1. Explorateur de fichiers"
    color_text "vert_clair" "2. Explorateur de processus"
    color_text "vert_clair" "3. Explorateur de services"
    echo ""
    color_text "rouge_fonce" "4. Quitter"
    echo ""
}

# Boucle pour afficher le menu et traiter les choix de l'utilisateur
while true; do
    clear
    infos_system
    # Afficher le menu
    menu_principal

    # Demander à l'utilisateur de faire un choix
    read -p "Entrez votre choix : " choix

    clear
    
    # Traiter le choix de l'utilisateur
    case $choix in
        1)
            menu_file_explorer
            ;;
        2)
            menu_processus_explorer
            ;;
        3)
            menu_service_explorer  
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
