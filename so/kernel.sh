#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tKERNEL\n"

    echo -e "\t1. Modulos(lsmod)"
    echo -e "\t2. Informacion Modulo(modinfo x=ext4)"
    echo -e "\t3. Procesos de Sistema(/proc/sys)"
    echo -e "\n\tKERNEL"
    echo -e "\t\t4. Informacion Kernel(uname,lsb_release)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Kernel 1(Modulos,Grub)"
    echo -e "\t\t82. Ayuda Kernel 2(Procesos,Dispositivos,Cambios)"

    echo -e "\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_modulos_kernel() {
	clear
	echo -e "-----------Modulos-------------"
    
    lsmod
}

get_informacion_modulo_kernel() {
	
	modulo="";
	
	clear
	echo -e "-----------Informacion Modulo-------------"
    
    read -p "Ingrese Modulo a Consultar: " modulo
    
    modinfo $modulo
}

get_procesos_sistema() {
	clear
	echo -e "-----------Procesos de Sistema-------------"
    
    ls -l /proc/sys
}

get_informacion_kernel() {
	clear
	echo -e "-----------Informacion del Kernel-------------"
    
    echo -e "Arquitectura: $(arch)"
    echo -e "Release:$(uname -r)"
    echo -e "Version: $(uname -v)"

    echo -e "\nDISTRIBUCION"

    lsb_release -a
    
    echo -e "\nKERNEL GENERAL"
    uname -a

    echo -e "\nVERSION"

    cat /proc/version
}

get_ayuda_kernel1() {
    feh "./imagen/03_avanzado/08_kernel/081_kernel.jpg"
}

get_ayuda_kernel2() {
    feh "./imagen/03_avanzado/08_kernel/082_kernel.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_modulos_kernel ;;            
        2)  get_informacion_modulo_kernel ;;            
        3)  get_procesos_sistema ;;
        4)  get_informacion_kernel ;;
        
        81) get_ayuda_kernel1 ;;
        82) get_ayuda_kernel2 ;;        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done