#!/bin/bash

source file_explorer.sh;

while true; do
    clear
    echo "============================================="
    echo "         GESTIONNAIRE DE SERVICES SYSTEME     "
    echo "============================================="
    echo ""
    echo "1. Afficher les services disponibles/installés"
    echo "2. Afficher les services actifs"
    echo "3. Vérifier le statut d'un service"
    echo "4. Démarrer un service"
    echo "5. Arrêter un service"
    echo "6. Redémarrer un service"
    echo ""
    echo "7. Quitter"
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
