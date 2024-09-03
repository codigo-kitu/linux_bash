#!/bin/bash

opcion=0
linea=""

enlace=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tWIRELESS\n"
    
	echo -e "\t1. Wireless Informacion (iwconfig)"
    echo -e "\t2. Wireless Listado (iwlist)"
    echo -e "\t3. Wireless Configuracion (iwconfig)"

    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_configuracion_wireless() {
	clear
	
    echo -e "-----------Wireless Configuracion (iwlist)-------------"
    
    read -p "Ingrese el Enlace a consultar(enp3s0,lo,etc): " enlace

    echo
    
    iwconfig $enlace
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_listado_wireless() {
	clear
	
    echo -e "-----------Wireless Listado (iwlist)-------------"

    echo
    
    iwlist scan
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_informacion_wireless() {
	clear
	
    echo -e "-----------Wireless Informacion (iwconfig)-------------"
    
    read -p "Ingrese el Enlace a consultar([VACIO],enp3s0,lo,etc): " enlace

    echo
    
    iwconfig $enlace
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_close_cdrom() {
	clear
	
    echo -e "-----------Close Cd-Rom-------------"
    echo
    
    eject -t cdrom
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_informacion_wireless ;;            
        2)  get_listado_wireless;;          
        3)  get_configuracion_wireless;;  
        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done