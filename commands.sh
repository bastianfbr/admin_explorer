# Imports
source colors.sh

function infos_system {
    echo -e "$(color_text 'blanc' 'Date et heure du système : ')"
    echo -e "$(color_text 'jaune_fonce' "$(date -u '+%d-%m-%y') à $(date -u '+%H:%M:%S')")\n"
}