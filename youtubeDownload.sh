#!/bin/bash
clear
echo "Download Link eingeben: "
read link
echo "Welchen Format mp3 (3) oder mp4 (4): "
read format
    if [[ $format -eq 3 ]]
    then sudo youtube-dl --extract-audio --audio-format mp3 $link --no-check-certificate

    elif [[ $format -eq 4 ]]
    then sudo youtube-dl -f best $link --no-check-certificate
    
    else echo "Keine Korrekte eingabe!"
    fi