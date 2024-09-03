#!/bin/bash

opcion=0
linea=""

dispositivo=""
parametros=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tHARDWARE\n"
	  
    echo -e "\n\t\tHARDWARE\n"
	echo -e "\t1. Resumen Hardware(lshw)"
    echo -e "\t2. Informacion Hardware(dmidecode)"
    echo -e "\t3. Detalle Hardware(dmidecode)"
    
    echo -e "\n\t\tBUSQUEDA\n"
	echo -e "\t4. Busqueda por Nombre(lspci | grep Audio)"
    echo -e "\t5. Busqueda por Vendor(lspci -d 8086:2d13 -vvv)"
    echo -e "\t6. Busqueda NVIDIA(glxinfo | grep rendering)"
     
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Hardware 1(Lspci,Mbr,/mnt)"
 
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_busqueda_nombre() {
	clear
	
    echo -e "-----------Busqueda por Nombre-------------"
    echo
    
    read -p "Ingrese el Nombre Clave a Consultar(Audio): " dispositivo
    
    echo
    echo -e "\t\t\tPARAMETROS Busqueda\n"

    echo -e "\t(-tv) Arbol"
    echo -e "\t(-k) Modulos Kernel"
    echo -e "\t(-nn) Numero Identificacion"
    #echo -e "\t0. Salir\n\n"
    
    read -p "Construya los Parametros: " parametros
	
	clear 
	
    sudo lspci $parametros | grep $dispositivo
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_busqueda_vendor() {
	clear
	
    echo -e "-----------Busqueda por Vendor-------------"
    echo
    
    read -p "Ingrese el Numero/Serie Clave a Consultar(8086:2d13): " dispositivo
    
    echo
    echo -e "\t\t\tPARAMETROS Busqueda\n"

    echo -e "\t(-tv) Arbol"
    echo -e "\t(-k) Modulos Kernel"
    echo -e "\t(-nn) Numero Identificacion"
    #echo -e "\t0. Salir\n\n"
    
    read -p "Construya los Parametros: " parametros
	
	clear 
	
    sudo lspci $parametros -d $dispositivo -vvv
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}

get_busqueda_nvidia() {
	clear
	
    echo -e "-----------Busqueda NVIDIA-------------"
    echo
    
    glxinfo | grep rendering
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_resumen_hardware() {
	clear
	
    echo -e "-----------Resumen Hardware-------------"
    echo
    
    sudo lshw -short
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_informacion_hardware() {
	clear
	
    echo -e "-----------Informacion Hardware-------------"
    echo
    
    sudo dmidecode -q
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_detalle_hardware_bios() {
	clear
	
    echo -e "-----------Detalle Hardware Bios-------------"
    echo
    
    sudo dmidecode
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_ayuda_hardware1() {
    feh "./imagen/03_avanzado/02_administracion/025_hardware.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
                   
        1)  get_resumen_hardware ;;            
        2)  get_informacion_hardware;;           
        3)  get_detalle_hardware_bios ;;                 
        4)  get_busqueda_nombre ;;           
        5)  get_busqueda_vendor;;           
        6)  get_busqueda_nvidia ;;
        
        81) get_ayuda_hardware1 ;;             
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done