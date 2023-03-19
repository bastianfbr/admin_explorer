function infos_system {
    echo -e "$(color_text 'blanc' 'Date et heure du système : ')"
    echo -e "$(color_text 'jaune_fonce' "$(date '+%d-%m-%y') à $(date '+%H:%M:%S')")\n"
}