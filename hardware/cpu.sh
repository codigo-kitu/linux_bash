#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tHARDWARE\n"
	
	echo -e "\n\t\tCPU\n"
	echo -e "\t1. Informacion CPU(lscpu)"
    echo -e "\t2. Detalle CPU(/proc/cpuinfo)"
    echo -e "\t3. Interrupciones CPU(/proc/interrupts)"
    
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_detalle_cpu() {
	clear
	
    echo -e "-----------Detalle CPU-------------"
    echo
    
    cat /proc/cpuinfo
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}    

get_info_cpu() {
	clear
	
	echo -e "-----------Informacion CPU-------------"
	echo
	
	lscpu
	
	#for g2 in $(id); do
	#	echo -e "-> $g2"
	#done
}

get_interrupciones_cpu() {    
	clear
	
    echo -e "-----------Interrupciones CPU-------------"
    echo
    
    cat /proc/interrupts
    
    #cat /etc/group
    
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_info_cpu ;;            
        2)  get_detalle_cpu;;            
        3)  get_interrupciones_cpu ;;
        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done