#!/bin/bash

opcion=0
linea=""

paquete="";

get_menu_opciones() {
    clear

    echo -e "\t\t\tPAQUETES"   

    echo -e "\n\tTAREAS"
    echo -e "\t\t1. Instalar Paquete(apt-get install)"
    echo -e "\t\t2. Desinstalar Paquete(apt-get purge remove)"

    echo -e "\n\tAPT"
    echo -e "\t\t6. APT Chequear(apt-get)"
    echo -e "\t\t15. APT Informacion (apt-cache)"
    echo -e "\t\t7. APT Buscar (apt-cache)"
    echo -e "\t\t8. Librerias(ldd /usr/bin/ssh)"
    
    echo -e "\n\tDPKG"
    echo -e "\t\t9. Todos(dpkg)"
    echo -e "\t\t10. Informacion(dpkg)"
    echo -e "\t\t11. Lista Ficheros(dpkg)"
    echo -e "\t\t12. Buscar(dpkg)"
    
    echo -e "\n\tAPTITUDE"
    echo -e "\t\t13. Todos(aptitude)"
    echo -e "\t\t14. Buscar(aptitude)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Paquetes 1(Dḱg,Aptitude)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_apt_get_install() {
	clear
	echo -e "-----------INSTALAR PAQUETE-------------"
    
    read -p "Ingrese el Paquete (traceroute,etc): " paquete

    sudo apt-get install ${paquete}
}

get_apt_get_uninstall() {
	clear
	echo -e "-----------DESINSTALAR PAQUETE-------------"
    
    read -p "Ingrese el Paquete (i3blocks,etc): " paquete

    sudo apt-get --purge remove ${paquete}
}

get_apt_chequear() {
	clear
	echo -e "-----------APT Chequear-------------"
    
    sudo apt-get check
}

get_apt_informacion() {
	
	#paquete="";
	
	clear
	echo -e "-----------APT Informacion-------------"
    
    read -p "Ingrese Paquete a Consultar: " paquete
    
    apt-cache show ${paquete}
}

get_apt_buscar() {
	
	#paquete="";
	
	clear
	echo -e "-----------APT Buscar-------------"
    
    read -p "Ingrese Paquete a Consultar: " paquete
    
    apt-cache search ${paquete}
}

get_librerias() {
	path="";
	
	clear
	echo -e "-----------Librerias-------------"
    
    read -p "Ingrese Path a Consultar(/usr/bin/ssh): " path
     
    ldd ${path}
}

get_dpkg_todos() {
	clear
	echo -e "-----------DPKG Todos-------------"
    
    dpkg -l
}

get_dpkg_informacion() {
	clear
	echo -e "-----------DPKG Informacion-------------"
    
    read -p "Ingrese Paquete a Consultar(zip): " paquete
    
    dpkg -s ${paquete}
}

get_dpkg_lista_ficheros() {
	clear
	echo -e "-----------DPKG Lista Ficheros-------------"
    
    read -p "Ingrese Paquete a Consultar(zip): " paquete
    
    dpkg -L ${paquete}
}

get_dpkg_buscar() {
	clear
	echo -e "-----------DPKG Lista Ficheros-------------"
    
    read -p "Ingrese Paquete a Consultar(zip): " paquete
    
    dpkg -l | grep ${paquete}
}

get_aptitude_mostrar() {
	clear
	echo -e "-----------APTITUDE Mostrar-------------"
    
    read -p "Ingrese Paquete a Consultar(zip): " paquete
    
    aptitude show ${paquete}
}

get_aptitude_buscar() {
	clear
	echo -e "-----------APTITUDE Buscar-------------"
    
    read -p "Ingrese Paquete a Consultar(zip): " paquete
    
    aptitude search ${paquete}
}

get_ayuda_paquetes1() {
    feh "./imagen/03_avanzado/06_debian/062_debian.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in
    
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;

        1)  get_apt_get_install ;;       
        2)  get_apt_get_uninstall ;;    
        6)  get_apt_chequear ;;           
        7)  get_apt_buscar ;;            
        8)  get_librerias ;;           
        9)  get_dpkg_todos ;;            
        10) get_dpkg_informacion ;;           
        11) get_dpkg_lista_ficheros ;;           
        12) get_dpkg_buscar ;;            
        13) get_aptitude_mostrar ;;           
        14) get_aptitude_buscar ;;
        15) get_apt_informacion ;;
        
        81) get_ayuda_paquetes1 ;;
        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done