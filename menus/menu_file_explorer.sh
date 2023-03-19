function menu_file_explorer {
    clear
    color_text "cyan_fonce" "============================================="
    color_text "cyan_fonce" "           EXPLORATEUR DE FICHIERS           "
    color_text "cyan_fonce" "============================================="
    echo ""
    color_text "blanc" "1. Infos sur le répertoire courant"
    color_text "blanc" "2. Rechercher des fichiers"
    echo ""
    color_text "rouge_fonce" "3. Quitter"
    echo ""

    read -p "Entrez votre choix : " choix2
    clear
            case $choix2 in
                1)
                    head
                    fichier_repertoire_courant
                    nb_sous_repertoires
                    arborescence
                    poids_sous_repertoires
                    changer_repertoire
                    ;;
                2)
                    menu_recherche_fichiers
                    ;;
                3)
                    echo "Au revoir !"
                    exit 0
                    ;;
                *)
                    echo "Choix invalide, veuillez sélectionner une option entre 1 et 3."
                    ;;
            esac
}