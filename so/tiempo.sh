#!/bin/bash

opcion=0
linea="";

mes=1
anio=1900

get_menu_opciones() {
    
    clear
    echo
    echo -e "\t\t\tTiempo Fecha-Calendario\n"

    echo -e "\t1. Informacion TODO"
    echo -e "\t2. Fecha(date)"
    echo -e "\t3. Calendario(cal)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Tiempo 1(Date,Cal)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_date_comando() {
    echo -e "-----------Date-------------"
    
    date
}

get_cal_comando() {
    echo -e "-----------Cal-------------"
    
    cal $mes $anio
}

get_tiempo_comando() {
    echo -e "-----------Tiempo-------------"

    get_date_comando

    get_cal_comando
}


get_ayuda_tiempo1() {
    feh "./imagen/01_basico/03_basico.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;

        1)  get_tiempo_comando ;;
        2)  get_date_comando ;;
        
        3)
            clear;
            read -p "Ingrese Anio: " anio
            read -p "Ingrese Mes: " mes

            get_cal_comando ;; 

        81) get_ayuda_tiempo1 ;;
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"

read linea

#read -n 1 -s -r -p "Teclee cualquier tecla para continuar" linea

done