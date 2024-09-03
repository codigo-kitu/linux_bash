#!/bin/bash

opcion=0

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tDISTRO GENERAL\n"
    
    echo -e "\t\t1. Launchers / Accesos Directos"
    echo -e "\t\t8. Reiniciar"
    echo -e "\t\t9. Apagar"
	
    echo -e "\n\t\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

exec_call_launchers() {
    "./distro/general/launchers.sh"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)
            exec_call_launchers ;;           
        2)
            exec_call_configuracion ;;
        8)
            shutdown -r ;;       
	9)
            shutdown -P ;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done
