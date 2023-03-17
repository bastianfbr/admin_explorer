function menu_recherche_fichiers {
    color_text "blanc" "Menu recherches fichiers :"
    color_text "noir" "1. Chercher fichiers dans répertoire courant"
    color_text "noir" "2. Commande 2"

    read -p "Entrez votre choix : " choix2
    case $choix2 in
        1)
            chercher_fichiers_courant_date
            ;;
        2)
            commande2
            ;;
        *)
            echo "Choix invalide, veuillez sélectionner une option entre 1 et 2."
            ;;
    esac
}