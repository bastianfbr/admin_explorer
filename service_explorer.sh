function list_unit_files() {
    result=$(ls /etc/init.d)
    color_text "bleu_clair" "$result"
    read -p "Appuyer sur une touche pour continuer"
}

function list_running_units() {
    for service_name in $(ls /etc/init.d); do
        service $service_name status | grep -q "is running"
        if [ $? -eq 0 ]; then
            color_text "vert_fonce" "$(echo $service_name | cut -d'.' -f1)"
        fi
    done
    read -p "Appuyer sur une touche pour continuer"
}

function check_service_status() {
    read -p "Saisir le nom du service : " service_name
    result=$(service "$service_name" status)
    color_text "magenta_clair" "$result"
    read -p "Appuyer sur une touche pour continuer"
}

function start_service() {
    read -p "Saisir le nom du service à démarrer : " service_name
    result=$(service "$service_name" start)
    color_text "jaune_fonce" "$result"
    read -p "Appuyer sur une touche pour continuer"
}

function stop_service() {
    read -p "Saisir le nom du service à arrêter : " service_name
    result=$(service "$service_name" stop)
    color_text "rouge_fonce" "$result"
    read -p "Appuyer sur une touche pour continuer"
}

function restart_service() {
    read -p "Saisir le nom du service à redémarrer : " service_name
    result=$(service "$service_name" restart)
    color_text "cyan_clair" "$result"
}