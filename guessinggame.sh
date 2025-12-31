#!/usr/bin/env bash

function devine_fichiers {
    local nb_reel=$(ls -1 | wc -l)
    
    echo "Combien de fichiers dans ce dossier ? Devine !"
    
    while true; do
        read -p "Ta proposition : " proposition
        
        if [[ $proposition -lt $nb_reel ]]; then
            echo "Trop bas !"
        elif [[ $proposition -gt $nb_reel ]]; then
            echo "Trop haut !"
        else
            echo "Bravo ! $nb_reel fichiers, c'est correct !"
            break
        fi
    done
}

devine_fichiers
