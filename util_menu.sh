#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tUTIL MENU\n"
    
    #echo -e "\t3. Detalle USB(eject)"  
    echo -e "\n\tUTIL"
    echo -e "\t\t1. Traductor"
    echo -e "\t\t2. Texto Pantalla"
    #echo -e "\t\t2. Servicios Developing"
    #echo -e "\t\t3. Aplicaciones Developing Mint"
    
    echo -e "\n\tLINUX"
    echo -e "\t\t99. Menu Principal"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

exec_call_util_translate() {
    "./util/translate/translate.sh"
}

exec_call_text_screen() {
    "./util/texto_pantalla/text_screen.sh"
}

exec_call_menu_linux() {
    "./menu.sh"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;

        1)  exec_call_util_translate ;; 
        2)  exec_call_text_screen ;;                            
        #3) exec_call_aplicaciones_developing_mint ;;    	
        
        99) exec_call_menu_linux ;;       
        *)  echo -e "Seleccion Incorrecta" ;;
    esac

#echo -e "Presione la tecla Enter para continuar"
#read linea

done