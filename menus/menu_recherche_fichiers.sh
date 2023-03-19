function menu_recherche_fichiers {
    clear
    color_text "cyan_fonce" "============================================="
    color_text "cyan_fonce" "          MENU RECHERCHE DE FICHIERS         "
    color_text "cyan_fonce" "============================================="
    echo ""
    color_text "gris_clair" "1. Rechercher fichiers plus récent qu'une date dans le répertoire courant"
    color_text "gris_clair" "2. Rechercher fichiers plus récent qu'une date dans tous les sous-répertoires"
    color_text "gris_clair" "3. Rechercher fichiers plus ancien qu'une date dans le répertoire courant"
    color_text "gris_clair" "4. Rechercher fichiers plus ancien qu'une date dans tous les sous-répertoires"
    echo ""
    color_text "gris_clair" "5. Rechercher fichiers de poids supérieur dans le répertoire courant"
    color_text "gris_clair" "6. Rechercher fichiers de poids inférieur dans le répertoire courant"
    color_text "gris_clair" "7. Rechercher fichiers de poids supérieur dans tous les sous-répertoires"
    color_text "gris_clair" "8. Rechercher fichiers de poids inférieur dans tous les sous-répertoires"
    echo ""
    color_text "gris_clair" "9. Rechercher fichiers d'une extension donnée dans le répertoire courant"
    color_text "gris_clair" "10. Rechercher fichiers d'une extension donnée dans tous les sous-répertoires"
    echo ""
    color_text "gris_clair" "11. Rechercher fichiers dont le nom contient une chaîne de caractères dans le répertoire courant"
    color_text "gris_clair" "12. Rechercher fichiers dont le nom contient une chaîne de caractères dans tous les sous-répertoires"
    echo ""
    read -p "Entrez votre choix : " choix2
    case $choix2 in
        1)
            chercher_fichiers_date 'courant' 'recent'
            ;;
        2)
            chercher_fichiers_date 'sous' 'recent'
            ;;
        3)
            chercher_fichiers_date 'courant' 'ancien'
            ;;
        4)
            chercher_fichiers_date 'sous' 'ancien'
            ;;
        5)
            chercher_fichiers_poids 'courant' 'plus'
            ;;
        6)
            chercher_fichiers_poids 'courant' 'moins'
            ;;
        7)
            chercher_fichiers_poids 'sous' 'plus'
            ;;
        8)
            chercher_fichiers_poids 'sous' 'moins'
            ;;
        *)
            echo "Choix invalide, veuillez sélectionner une option entre 1 et 2."
            ;;
    esac
}
