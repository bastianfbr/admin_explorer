function menu_recherche_fichiers {
    color_text "blanc" "Menu recherche de fichiers :"
    color_text "noir" "1. Rechercher fichiers plus récent qu'une date dans répertoire courant"
    color_text "noir" "2. Rechercher fichiers plus récent qu'une date dans tous les sous-répertoires"
    color_text "noir" "3. Rechercher fichiers plus ancien qu'une date dans répertoire courant"
    color_text "noir" "4. Rechercher fichiers plus récent qu'une date dans tous les sous-répertoires"
    color_text "noir" "4. Rechercher fichiers de poids supérieur dans le répertoire courant"
    color_text "noir" "5. Rechercher fichiers de poids inférieur dans le répertoire courant"
    color_text "noir" "6. Rechercher fichiers de poids supérieur dans tous les sous-répertoires"
    color_text "noir" "7. Rechercher fichiers de poids inférieur dans tous les sous-répertoires"
    color_text "noir" "8. Rechercher fichiers d’une extension donnée dans le répertoire courant"
    color_text "noir" "9. Rechercher fichiers d’une extension donnée dans tous les sous-répertoires"
    color_text "noir" "10. Rechercher fichiers dont le nom contient une chaine de caractère dans le répertoire courant"
    color_text "noir" "11. Rechercher fichiers dont le nom contient une chaine de caractère dans tous les sous-répertoires"

    read -p "Entrez votre choix : " choix2
    case $choix2 in
        1)
            chercher_fichiers_courant_date
            ;;
        2)
            chercher_fichiers_sous_repertoire_date
            ;;
        *)
            echo "Choix invalide, veuillez sélectionner une option entre 1 et 2."
            ;;
    esac
}