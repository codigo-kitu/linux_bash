#!/bin/bash

opcion=0
linea=""
texto=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tTEXTO PANTALLA\n"
    
	echo -e "\t1. Texto Formato (figlet)"
    #echo -e "\t2. Close CD-Rom(eject)"
    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Cd-ROM 1(Log,Eject)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_format_text() {
	clear	
    echo -e "----------- 1. Texto Formato (figlet) -------------"
    echo
    
    read -p "Ingrese un Texto: " texto

    figlet ${texto}
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_close_cdrom() {
	clear	
    echo -e "-----------Close Cd-Rom-------------"
    echo
    
    eject -t cdrom
}

get_ayuda_cdrom1() {
    feh "./imagen/02_intermedio/07_cdrom.jpg"
}

exec_salir() {
    clear 
    echo -e "Proceso terminado correctamente..."
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)  
            exec_salir
            break 
            ;;            

        1)  get_format_text ;;            
        2)  get_close_cdrom ;;          
        
        81) get_ayuda_cdrom1 ;;        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"

read linea

done