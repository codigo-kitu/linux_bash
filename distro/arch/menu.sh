#!/bin/bash

opcion=0

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tARCH LINUX\n"
    
    echo -e "\t\t1. Instalacion"
    echo -e "\t\t2. Configuracion"
    echo -e "\t\t3. Personalizacion"
    echo -e "\t\t4. Aplicaciones"
    echo -e "\t\t5. Tareas Diarias"

    echo -e "\n\t\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}


exec_call_instalacion() {
    "./distro/arch/01_instalacion.sh"
}

exec_call_configuracion() {
   "./distro/arch/02_configuracion.sh"
}

exec_call_personalizacion() {
   "./distro/arch/03_personalizacion.sh"
}

exec_call_aplicaciones() {
    "./distro/arch/04_aplicaciones.sh"
}

exec_call_tareas() {
    "./distro/arch/05_tareas.sh"
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
            exec_call_instalacion ;;           
        2)
            exec_call_configuracion ;;
        3)
            exec_call_personalizacion ;;
        4)
            exec_call_aplicaciones ;;
        5)
            exec_call_tareas ;;
        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done
