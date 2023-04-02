function menu_service_explorer {
while true; do
    clear
    color_text "cyan_fonce" "============================================="
    color_text "cyan_fonce" "         GESTIONNAIRE DE SERVICES SYSTEME    "
    color_text "cyan_fonce" "============================================="
    echo ""
    color_text "blanc" "1. Afficher les services disponibles/installés"
    color_text "blanc" "2. Afficher les services actifs"
    color_text "blanc" "3. Vérifier le statut d'un service"
    color_text "blanc" "4. Démarrer un service"
    color_text "blanc" "5. Arrêter un service"
    color_text "blanc" "6. Redémarrer un service"
    echo ""
    color_text "rouge_fonce" "7. Quitter"
    echo ""
    read -p "Entrez votre choix : " option
    clear
    case $option in
        1)
            list_unit_files
            ;;
        2)
            list_running_units
            ;;
        3)
            check_service_status
            ;;
        4)
            start_service
            ;;
        5)
            stop_service
            ;;
        6)
            restart_service
            ;;
        7)
            echo "Au revoir !"
            exit 0
            ;;
        *)
            echo "Choix invalide, veuillez sélectionner une option entre 1 et 7."
            ;;
    esac
done

}