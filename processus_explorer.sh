#!/bin/bash

# Fonction pour afficher tous les processus et leur propriétaire
function list_all_processes() {
    ps aux | awk '{print $1,$2,$11}'
}

# Fonction pour afficher les processus actifs et leur propriétaire
function list_active_processes() {
    ps aux --no-heading | awk '{print $1,$2,$11}'
}

# Fonction pour afficher les processus d'un utilisateur donné en paramètre
function list_user_processes() {
    ps -u $1 --no-heading | awk '{print $1,$2,$11}'
}

# Fonction pour afficher les processus consommant le plus de mémoire et leur propriétaire
function list_top_mem_processes() {
    ps aux --sort=-%mem --no-heading | head -n 10 | awk '{print $1,$2,$11}'
}

# Fonction pour afficher les processus dont le nom contient une chaîne de caractères donnée en paramètre et leur propriétaire
function list_matching_processes() {
    ps aux --no-heading | grep $1 | awk '{print $1,$2,$11}'
}

# Fonction pour produire un fichier de sortie contenant les résultats de la recherche actuelle
# Le fichier est nommé avec la date et l'heure système pour éviter d'écraser les résultats précédents
function write_to_file() {
    filename="process-search-$(date +%Y%m%d-%H%M%S).txt"
    $1 > $filename
    echo "Résultats écrits dans le fichier $filename"
}