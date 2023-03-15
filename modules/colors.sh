function color_text {
    local color=$1
    local text=$2
    
    case $color in
        "noir")
            echo -e "\033[0;30m$text\033[0m"
            ;;
        "rouge_fonce")
            echo -e "\033[0;31m$text\033[0m"
            ;;
        "vert_fonce")
            echo -e "\033[0;32m$text\033[0m"
            ;;
        "jaune_fonce")
            echo -e "\033[0;33m$text\033[0m"
            ;;
        "bleu_fonce")
            echo -e "\033[0;34m$text\033[0m"
            ;;
        "magenta_fonce")
            echo -e "\033[0;35m$text\033[0m"
            ;;
        "cyan_fonce")
            echo -e "\033[0;36m$text\033[0m"
            ;;
        "gris_fonce")
            echo -e "\033[0;37m$text\033[0m"
            ;;
        "gris_clair")
            echo -e "\033[1;30m$text\033[0m"
            ;;
        "rouge_clair")
            echo -e "\033[1;31m$text\033[0m"
            ;;
        "vert_clair")
            echo -e "\033[1;32m$text\033[0m"
            ;;
        "jaune_clair")
            echo -e "\033[1;33m$text\033[0m"
            ;;
        "bleu_clair")
            echo -e "\033[1;34m$text\033[0m"
            ;;
        "magenta_clair")
            echo -e "\033[1;35m$text\033[0m"
            ;;
        "cyan_clair")
            echo -e "\033[1;36m$text\033[0m"
            ;;
        "blanc")
            echo -e "\033[1;37m$text\033[0m"
            ;;
        *)
            echo "Couleur inconnue : $color"
            ;;
    esac
}

# Exécute les tests de couleurs
if [ "$1" = "test" ]; then
echo -e "Noir : \033[0;30mTexte en noir\033[0m"
echo -e "Rouge foncé : \033[0;31mTexte en rouge foncé\033[0m"
echo -e "Vert foncé : \033[0;32mTexte en vert foncé\033[0m"
echo -e "Jaune foncé : \033[0;33mTexte en jaune foncé\033[0m"
echo -e "Bleu foncé : \033[0;34mTexte en bleu foncé\033[0m"
echo -e "Magenta foncé : \033[0;35mTexte en magenta foncé\033[0m"
echo -e "Cyan foncé : \033[0;36mTexte en cyan foncé\033[0m"
echo -e "Gris foncé : \033[0;37mTexte en gris foncé\033[0m"
echo -e "Gris clair : \033[1;30mTexte en gris clair\033[0m"
echo -e "Rouge clair : \033[1;31mTexte en rouge clair\033[0m"
echo -e "Vert clair : \033[1;32mTexte en vert clair\033[0m"
echo -e "Jaune clair : \033[1;33mTexte en jaune clair\033[0m"
echo -e "Bleu clair : \033[1;34mTexte en bleu clair\033[0m"
echo -e "Magenta clair : \033[1;35mTexte en magenta clair\033[0m"
echo -e "Cyan clair : \033[1;36mTexte en cyan clair\033[0m"
echo -e "Blanc : \033[1;37mTexte en blanc\033[0m"

fi