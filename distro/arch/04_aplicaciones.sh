#!/bin/bash

opcion=0

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPARTE IV: APLICACIONES\n"
    
    echo -e "\t\t1. Aplicacion 1"
    echo -e "\t\t2. Aplicacion 2"
    echo -e "\t\t3. Aplicacion 3"
   
    echo -e "\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}


exec_procesar_aplicacion1() {

}

exec_procesar_aplicacion2() {

}

exec_procesar_aplicacion3() {

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
            exec_procesar_aplicacion1 ;;           
        2)
            exec_procesar_aplicacion2 ;;
        3)
            exec_procesar_aplicacion3 ;;
        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done
