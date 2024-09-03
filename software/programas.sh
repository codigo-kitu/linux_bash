#!/bin/bash

opcion=0
linea=""

clave=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPROGRAMAS\n"
    
	echo -e "\t1. Lista de Programas(/usr/bin)"
    echo -e "\t2. Busqueda de Programas(/usr/bin)"
    #echo -e "\t3. Detalle USB(eject)"
    
    #echo -e "\n\tAYUDA"
    #echo -e "\t\t81. Ayuda Cd-ROM 1(Log,Eject)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_lista_programas() {
	clear
	
    echo -e "-----------Lista de Programas-------------"
    echo
    
    ls /usr/bin
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_busqueda_programas() {
	clear
	echo -e "-----------Busqueda de Programas-------------"
    
    #read -p "Ingrese Path /home/bydan/gPodder: " path
    #read -p "Ingrese Nivel Busqueda(1,2,3,4,5): " nivel
    
    read -p "Ingrese nombre clave(Usar *): " clave
    
    sudo find /usr/bin \
                -name $clave
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
            
        1)  get_lista_programas ;;            
        2)  get_busqueda_programas;;          

        81) get_ayuda_cdrom1;;        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done

