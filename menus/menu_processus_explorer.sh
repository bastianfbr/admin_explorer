function menu_processus_explorer {
    echo "Menu interactif pour explorer les processus"
    echo "1. Afficher tous les processus et leur propriétaire"
    echo "2. Afficher les processus actifs et leur propriétaire"
    echo "3. Afficher les processus d'un utilisateur donné"
    echo "4. Afficher les processus consommant le plus de mémoire et leur propriétaire"
    echo "5. Afficher les processus dont le nom contient une chaîne de caractères donnée"
    echo "6. Écrire les résultats de la recherche actuelle dans un fichier"
    echo "7. Quitter"
    echo -n "Votre choix : "
    read choice
    case $choice in
        1) list_all_processes ;;
        2) list_active_processes ;;
        3) echo -n "Nom de l'utilisateur : "
           read user
           list_user_processes $user ;;
        4) list_top_mem_processes ;;
        5) echo -n "Chaîne de caractères : "
           read pattern
           list_matching_processes $pattern ;;
        6) echo -n "Entrez le numéro de l'option à exécuter : "
           read option
           write_to_file "menu_option_$option" ;;
        7) exit ;;
        *) echo "Choix invalide. Veuillez réessayer." ;;
    esac
}