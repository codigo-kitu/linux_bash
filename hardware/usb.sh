#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tHARDWARE\n"
    
    echo -e "\n\t\tUSB\n"
	echo -e "\t1. General USB(lsusb)"
    echo -e "\t2. Arbol USB(lsusb)"
    echo -e "\t3. Detalle USB(lsusb)"
    
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_general_usb() {
	clear
	
    echo -e "-----------General USB-------------"
    echo
    
    sudo lsusb
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_arbol_usb() {
	clear
	
    echo -e "-----------Arbol USB-------------"
    echo
    
    sudo lsusb -t -v
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_detalle_usb() {
	clear
	
    echo -e "-----------Detalle USB-------------"
    echo
    
    sudo lsusb -v
    
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
            
        1)  get_general_usb ;;            
        2)  get_arbol_usb;;            
        3)  get_detalle_usb ;;        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done