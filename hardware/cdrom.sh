#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tCD-ROM\n"
    
	echo -e "\t1. Eject CD-Rom(eject)"
    echo -e "\t2. Close CD-Rom(eject)"
    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Cd-ROM 1(Log,Eject)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion
}

get_eject_cdrom() {
	clear	
    echo -e "-----------Eject Cd-Rom-------------"
    echo
    
    eject cdrom
    
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

while [ 1 ]
do

    get_menu_opciones

    case $opcion in
    
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_eject_cdrom ;;            
        2)  get_close_cdrom ;;          

        81) get_ayuda_cdrom1 ;;
        
        *)  echo -e "Seleccion Incorrecta" ;;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done