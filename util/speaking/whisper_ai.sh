#!/bin/bash

opcion=0
linea=""

model="base"    # tiny,base,small,medium,large --> RECOMMENDED = base
language="English"   # en->English,es->Spanish,fr->French,pt->Portuguese
format="txt"    # json
path_base="/home/bydan_lnlt/Documents/audacity/"
file_name="default.wav"
output_dir="output/"

is_verbose="True"
is_manual="False"

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tWHISPER AI - OPENAI\n"
    
	echo -e "\t1. Transcribir Audio (whisper transcribe)"
    echo -e "\t2. Traducir Audio (whisper translate)"
    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t11. Help Whisper IA (whisper --help)"

    echo -e "\n\tINSTALL"
    echo -e "\t\t21. Install Whisper IA (sudo apt install)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion
}

run_transcribe_audio() {
	clear	
    echo -e "-----------1. Transcribir Audio (transcribe)-------------"
    echo
    
    if [ ${is_manual} == "True" ]
    then
        read -p "Ingresar Nombre de Archivo (file1.wav, file1.mp3): " file_name
    fi
    

    whisper ${path_base}${file_name} \
                        --model ${model} \
                        --language ${language} \
                        --output_format ${format} \
                        --task transcribe \
                        --output_dir ${path_base}${output_dir} \
                        --verbose ${is_verbose}
}  

run_translate_audio() {
    clear   
    echo -e "-----------2. Traducir Audio (whisper translate)-------------"
    echo
    
    if [ ${is_manual} == "True" ]
    then
        read -p "Ingresar Nombre de Archivo (file1.wav, file1.mp3): " file_name
    fi


    whisper ${path_base}${file_name} \
                        --model ${model} \
                        --language ${language} \
                        --output_format ${format} \
                        --task translate \
                        --output_dir ${path_base}${output_dir} \
                        --verbose ${is_verbose}
} 

help_whisper_ia() {
    clear   
    echo -e "----------- 11. Help Whisper IA (whisper --help) -------------"

    whisper --help
}

install_whisper_ia() {
    clear   
    echo -e "----------- 21. Install Whisper IA (sudo apt install) -------------"
    # whisper dictate1.wav --model tiny --language en --output_format txt --task transcribe

    # Prerequisites
    sudo apt update && sudo apt install ffmpeg

    # Install Open IA Whisper
    pip install -U openai-whisper
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in
    
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  run_transcribe_audio ;;            
        2)  run_translate_audio ;;          
        
        11) help_whisper_ia ;;

        21) install_whisper_ia ;;
        
        *)  echo -e "Seleccion Incorrecta" ;;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done