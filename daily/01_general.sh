#!/bin/bash

opcion=0
linea=""

distro=""
explorer=""

distro=$(uname -a)


if which thunar >/dev/null; then
    explorer="thunar"

elif which caja >/dev/null; then
    explorer="caja"
fi

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tRECURSOS\n"
		
	echo -e "\t1. Linux"
    echo -e "\t2. RAM"
    echo -e "\t3. Interrupciones CPU(/proc/interrupts)"
    
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_linux() {
	clear
	
    echo -e "----------- Linux -------------"
    echo -e "\t\t1. Desktop"
    echo -e "\t\t2. Docker"
    echo -e "\t\t3. Environments (C,Java,Php,Js,Python)"

    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion

    case $opcion in
        0)  
            ;;
        1)
            $explorer /mnt/bydan_lxmm_home/datos/learning/linux/02_desktop/
            ;;
        2)
            $explorer /mnt/bydan_lxmm_home/datos/learning/linux/02_desktop/distros/03_docker_podman/
            ;;
        3)
            $explorer /mnt/bydan_lxmm_home/datos/learning/linux/02_desktop/distros/03_docker_podman/01_practica/06_environments/
            ;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac   
}    

get_info_cpu() {
	clear
	
	echo -e "-----------Informacion CPU-------------"
	echo
	
	lscpu
	
	#for g2 in $(id); do
	#	echo -e "-> $g2"
	#done
}

get_interrupciones_cpu() {    
	clear
	
    echo -e "-----------Interrupciones CPU-------------"
    echo
    
    cat /proc/interrupts
    
    #cat /etc/group
    
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
			get_linux ;;
            
        2)
             get_detalle_cpu;;
            
        3)
            get_interrupciones_cpu ;;
        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done

