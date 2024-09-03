#!/bin/bash

opcion=0
linea=""

archivo=""
comando=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tCD-ROM\n"
    
	echo -e "\t1. Sobreescribir (>)"
    echo -e "\t2. Adjuntar (Append = >>)"
    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Entradas/Salidas(Pipes,wc)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_out_sobreescribir() {
	clear
	
    echo -e "-----------Sobreescribir (>)-------------"
    echo
    
    read -p "Ingrese el nombre del archivo: " archivo
    read -p "Ingrese el Comando a ejecutar: " comando
    
    $comando > output/$archivo

    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_out_adjuntar() {
	clear
	
    echo -e "-----------Adjuntar (Append = >>)-------------"
    echo
    
    read -p "Ingrese el nombre del archivo: " archivo
    read -p "Ingrese el Comando a ejecutar: " comando
    
    $comando >> output/$archivo
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}

get_ayuda_entradas_salidas1() {
    feh "./imagen/02_intermedio/06_pipes.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_out_sobreescribir ;;            
        2)  get_out_adjuntar;;          
        
        81) get_ayuda_entradas_salidas1;;        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done