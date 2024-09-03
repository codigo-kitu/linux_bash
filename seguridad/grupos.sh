#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tGRUPOS\n"

    echo -e "\t1. Grupos(groups)"
    echo -e "\t2. Grupos Id(id)"
    echo -e "\t3. Grupos Etc(/etc/group)"
    echo -e "\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_info_grupos() {
	clear
	
    echo -e "-----------Groups-------------"
    
    for g1 in $(groups); do
		echo -e "-> $g1"
	done
}    

get_info_grupos_id() {
	clear
	
	echo -e "-----------Id-------------"
	for g2 in $(id); do
		echo -e "-> $g2"
	done
}

get_info_grupos_etc() {    
	clear
	
    echo -e "-----------Group Etc-------------"
    cat /etc/group
    
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_info_grupos ;;            
        2)  get_info_grupos_id ;;            
        3)  get_info_grupos_etc ;;
        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done