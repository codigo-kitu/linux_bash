#!/bin/bash

opcion=0
linea=""


url=""

grupo_particiones=""
particion_root=""
particion_boot=""
particion_home=""
particion_swap=""


get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPARTE I: INSTALACION\n"
    
	echo -e "\t1. Procesar Inicio"
    echo -e "\t2. Cargar Teclado"
    echo -e "\t3. Procesar Red (OPCIONAL)"
    echo -e "\t4. Configurar Fecha Hora"
    echo -e "\t5. Procesar Particiones"
    echo -e "\t6. Configurar Particiones"
    echo -e "\t7. Formatear Particiones"
    echo -e "\t8. Montar Particiones"
    echo -e "\t9. Configurar Mirror"
    echo -e "\t10.Intalar Linux (300 MB = 130MB + 70MB + 100MB)"
    
    echo -e "\t99. TODO (Instalacion)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

#-------------------------PARTE I (INSTALACION)-----------------------------------

exec_procesar_inicio() {
    echo -e "------------------1.- Inicio---------------------------"

    #INICIO
    ls
}

exec_cargar_teclado() {
    echo -e "------------------2. Cargar Teclado---------------------------"

    #TECLADO
    loadkeys es
}

exec_procesar_red() {
    echo -e "------------------3.- Procesar Red (OPCIONAL)---------------------------"
    
    read -p "Ingrese Url(google.com,etc): " url

    #RED
    ip link

    ping -c 3 $url
}

exec_configurar_fecha_hora() {
    echo -e "------------------4.- Configurar Fecha Hora---------------------------"

    #FECHA HORA
    timedatectl set-ntp true
    timedatectl status
}

exec_procesar_particiones() {
    echo -e "------------------5.- Procesar Particiones---------------------------"

    #VER PARTICIONES
    lsblk --fs

    fdisk -l
}

exec_configurar_particiones() {
    echo -e "------------------6.- Configurar Particiones---------------------------"

    #CREAR PARTICIONES
    #DOS
    #Root,Home,Swat
    
    read -p "Ingrese Grupo Particiones(sda,sdb,etc): " grupo_particiones

    cfdisk /dev/$grupo_particiones

    fdisk -l
}

exec_formatear_particiones() {
    echo -e "------------------7.- Formatear Particiones---------------------------"

    #FORMATEAR
    #Root

    read -p "Ingrese Particion Root(sda1,etc): " particion_root

    mkfs.ext4 /dev/$particion_root

    
    #Boot

    read -p "Ingrese Particion Boot(sda2,etc): " particion_boot

    mkfs.ext4 /dev/$particion_boot


    #Home (TALVEZ)

    #read -p "Ingrese Particion Home(sda3,etc): " particion_home

    #mkfs.ext4 /dev/$particion_home


    #Swap
    
    read -p "Ingrese Particion Swap(sda3,etc): " particion_swap

    mkswap /dev/$particion_swap
    swapon /dev/$particion_swap
}

exec_montar_particiones() {
    echo -e "------------------8.- Montar Particiones---------------------------"

    #MONTAR
    #Root
    
    #read -p "Ingrese Particion Root(sda1,etc): " particion_root

    mount /dev/$particion_root /mnt
    

    #Boot
    #read -p "Ingrese Particion Boot(sda2,etc): " particion_boot

    mkdir /mnt/boot
    mount /dev/$particion_boot /mnt/boot


    #Home

    read -p "Ingrese Particion Home(sda3,etc): " particion_home

    mkdir /mnt/home
    mount /dev/$particion_home /mnt/home
}

exec_configurar_mirror() {
    echo -e "------------------9.- Configurar Mirror---------------------------"

    #MIRROR
    pacman -Sy reflector

    reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist
}

exec_intalar_linux() {
    echo -e "------------------10.- Intalar Linux (300 MB = 130MB + 70MB + 100MB)---------------------------"

    #INSTALAR
    pacstrap /mnt base linux linux-firmware
}

exec_todo_instalacion() {
    exec_procesar_inicio ;;          
    exec_cargar_teclado;;       
    exec_procesar_red ;;            
    exec_configurar_fecha_hora;;          
    exec_procesar_particiones ;;          
    exec_configurar_particiones;;       
    exec_formatear_particiones ;;           
    exec_montar_particiones;;
    exec_configurar_mirror ;;           
    exec_intalar_linux;;
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
			exec_procesar_inicio ;;          
        2)
            exec_cargar_teclado;;       
        3)
			exec_procesar_red ;;            
        4)
            exec_configurar_fecha_hora;;          
        5)
			exec_procesar_particiones ;;          
        6)
            exec_configurar_particiones;;       
        7)
			exec_formatear_particiones ;;           
        8)
            exec_montar_particiones;;
        9)
			exec_configurar_mirror ;;           
        10)
            exec_intalar_linux;;
        99)
            exec_todo_instalacion;;     
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done
