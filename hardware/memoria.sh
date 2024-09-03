#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tMemoria RAM\n"

    echo -e "\t1. Memoria RAM Libre(free)"
    echo -e "\t2. Informacion de Memoria RAM (/proc/meminfo)"
    echo -e "\t3. Memoria Swap(/proc/swaps)"
    echo -e "\t4. Memorias Dinamico (vmstat 1,2,3,4,5)"
    echo -e "\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_memoria_ram_libre() {
	clear
	echo -e "-----------Memoria RAM Libre-------------"
    
    free -h -g
}

get_informacion_memoria_ram() {
	
	#modulo="";
	
	clear
	echo -e "-----------Informacion de Memoria RAM-------------"
    
    #read -p "Ingrese Modulo a Consultar: " modulo
    
    cat /proc/meminfo
}

get_memoria_swap() {
	clear
	echo -e "-----------Memoria Swap-------------"
    
    cat /proc/swaps
}

get_memoria_dinamica() {
	clear
	echo -e "-----------Memoria Dinamica-------------"
    
    read -p "Ingrese No Segundos(1,2,3,etc): " segundos

    vmstat $segundos
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_memoria_ram_libre ;;          
        2)  get_informacion_memoria_ram ;;           
        3)  get_memoria_swap ;;
        4)  get_memoria_dinamica ;;       
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done