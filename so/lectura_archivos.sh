#!/bin/bash

opcion=0
linea=""

path=""
path1=""
path2=""

archivo=""
lineas=0
comando=""
parametros=""


get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tLECTURA ARCHIVOS\n"
    
	echo -e "\t1. Lectura Archivo (cat)"
    echo -e "\t2. Desde Inicio Archivo (head)"
    echo -e "\t3. Desde Final Archivo (tail)"
    echo -e "\t4. Orden Archivo (order)"
    echo -e "\t5. Combinacion de Archivos (paste)"
    
    echo -e "\n\tCOMPARACION"
    echo -e "\t6. Comparacion de Archivos (cmp)"
    echo -e "\t7. Diferencia de Archivos (diff)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Lectura Archivos(cat,head,tail,order)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_comparacion_archivos() {
    clear
	
    echo -e "-----------Comparacion de Archivos (cmp)-------------"
    echo

    read -p "Ingrese el Path del Archivo 1 (/home/bydan/Documents/archivo1.txt,/etc/hostname): " path1
    read -p "Ingrese el Path del Archivo 2 (/home/bydan/Documents/archivo2.txt,/etc/timezone): " path2
    #read -p "Ingrese Parametros(-s Tab entre,| less,| more): " parametros

    cmp $path1 $path2
}

get_diferencia_archivos() {
    clear
	
    echo -e "-----------Diferencia de Archivos (diff)-------------"
    echo

    read -p "Ingrese el Path del Archivo 1 (/home/bydan/Documents/archivo1.txt,/etc/hostname): " path1
    read -p "Ingrese el Path del Archivo 2 (/home/bydan/Documents/archivo2.txt,/etc/timezone): " path2
    #read -p "Ingrese Parametros(-s Tab entre,| less,| more): " parametros

    diff $path1 $path2
}


get_lectura_archivo() {
	clear
	
    echo -e "-----------Lectura Archivo (cat)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents,/etc): " path
    read -p "Ingrese el Archivo(archivo1.txt,mime.types): " archivo
    read -p "Ingrese Parametros(| less,| more,[VACIO]): " parametros

    cat $path/$archivo $parametros
}  

get_desde_inicio_archivo() {
	clear
	
    echo -e "-----------Desde Inicio Archivo (head)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents,etc): " path
    read -p "Ingrese el Archivo(archivo1.txt,mime.types): " archivo
    read -p "Numero Lineas(5,10,20,50): " lineas
    read -p "Ingrese Parametros([VACIO],| less,| more): " parametros

    head -n $lineas $path/$archivo $parametros
}

get_desde_final_archivo() {
    clear
	
    echo -e "-----------Desde Final Archivo (tail)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents,etc): " path
    read -p "Ingrese el Archivo(archivo1.txt,mime.types): " archivo
    read -p "Numero Lineas(5,10,20,50): " lineas
    read -p "Ingrese Parametros([VACIO],| less,| more): " parametros

    tail -n $lineas $path/$archivo $parametros
}

get_orden_archivo() {
    clear
	
    echo -e "-----------Orden Archivo (order)-------------"
    echo

    read -p "Ingrese el Path Base(/home/bydan/Documents,/etc): " path
    read -p "Ingrese el Archivo(archivo1.txt,mime.types): " archivo
    read -p "Ingrese el Comando(ls,cat): " comando
    read -p "Ingrese Parametros(-r Reversa,| less,| more): " parametros

    $comando $path/$archivo | sort $parametros
}

get_combinacion_archivos() {
    clear
	
    echo -e "-----------Combinacion de Archivos (paste)-------------"
    echo

    read -p "Ingrese el Path del Archivo 1 (/home/bydan/Documents/archivo1.txt,/etc/hostname): " path1
    read -p "Ingrese el Path del Archivo 2 (/home/bydan/Documents/archivo1.txt,/etc/timezone): " path2
    read -p "Ingrese Parametros(-s Tab entre,| less,| more): " parametros

    paste $path1 $path2 $parametros
}

get_ayuda_archivos() {
    feh "./imagen/02_intermedio/01_leer_archivos.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_lectura_archivo ;;            
        2)  get_desde_inicio_archivo;;          
        3)  get_desde_final_archivo ;;            
        4)  get_orden_archivo;; 
        5)  get_combinacion_archivos;;     
        6)  get_comparacion_archivos;;
        7)  get_diferencia_archivos;;

        81) get_ayuda_archivos;;        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done

