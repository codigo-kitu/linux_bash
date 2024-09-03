#!/bin/bash

opcion=0
particion="";
path="";

linea=""


get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tDISCOS\n"
	
	echo -e "\n\tPARTICIONES"
    echo -e "\t\t1. FDisk(fdisk)"
    echo -e "\t\t2. Particiones con FStab(fstab)"
    echo -e "\t\t3. Particiones Actual con /proc/mounts"
    echo -e "\t\t4. Df(df)"
    echo -e "\t\t5. Particiones con Ls(ls)"
    echo -e "\t\t6. Particiones con LsBlk(lsblk)"
    echo -e "\t\t7. Informacion(hdparm -i /dev/sda*)"
    
    echo -e "\n\tUSO"
    echo -e "\t\t11. Uso de Particion Df(df)"
    echo -e "\t\t12. Path Uso Du(du)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Discos 1(Df,Mount)"
    echo -e "\t\t82. Ayuda Discos 2(Du)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_particiones_fdisk() {
	clear
	
    echo -e "-----------1. FDisk(fdisk)-------------"
    
    sudo fdisk -l
    
    #for g1 in $(sudo fdisk -l); do
	#	echo -e "-> $g1"
	#done
}    

get_particiones_fstab() {
	clear
	
	echo -e "-----------2. Particiones con FStab(fstab)-----------"
	
	cat /etc/fstab
	
	#for g2 in $(cat /etc/fstab); do
	#	echo -e "-> $g2"
	#done
}

get_particiones_proc_mounts() {
	clear
	
	echo -e "-----------3. Particiones Actual con /proc/mounts-----------"
	
	cat /proc/mounts
}

get_particiones_df() {    
	clear
	
    echo -e "-----------4. Df(df)-------------"
    df
    
    #for g2 in $(df); do
	#	echo -e "-> $g2"
	#done
}

get_particiones_ls() {    
	clear
	
    echo -e "-----------5. Particiones con Ls(ls)-------------"
    
    for g2 in $(ls /dev/sd*); do
		echo -e "-> $g2"
	done
}

get_particiones_lsblk() {    
	clear
	
    echo -e "-----------5. Particiones con LsBlk(lsblk)-------------"
    
    sudo lsblk
}


get_informacion_particion_hdparm() {
	clear
	
    echo -e "-----------6. Informacion(hdparm -i /dev/sda*)-------------"
   
	read -p "Ingrese la particion(sda,sdb,sda1,etc): " particion
	
    sudo hdparm -i /dev/$particion*
    
    #for g1 in $(sudo fdisk -l); do
	#	echo -e "-> $g1"
	#done
} 

get_uso_particion_df() {
	clear
	
    echo -e "-----------11. Uso de Particion Df(df)-------------"
   
	read -p "Ingrese Path(/dev/sda,/home,/home/bydan,etc): " path
	
    df -h $path*
    
    #for g1 in $(sudo fdisk -l); do
	#	echo -e "-> $g1"
	#done
}

get_uso_path_du() {
	clear
	
    echo -e "-----------12. Path Uso Du(du)-------------"
   
	read -p "Ingrese Path(/home/bydan/images/,/home/bydan,/home/bydan/*.txt,etc): " path
	
    echo -e "\n---PARAMETROS---"
    echo -e "\n\t(-h) Leible"
    echo -e "\t(-a) Con Archivos"
    echo -e "\t(-c) Con Total Uso"
    echo -e "\t(-s) Solo Total Uso\n"
   
    read -p "Construya los parametros(-ch,etc): " parametros

    sudo du $parametros $path | sort -rn
    
    #df -h $path*
    
    #for g1 in $(sudo fdisk -l); do
	#	echo -e "-> $g1"
	#done
}

get_ayuda_discos1() {
    feh "./imagen/03_avanzado/02_administracion/024_particiones.jpg"
}

get_ayuda_discos2() {
    feh "./imagen/03_avanzado/02_administracion/026_software_tamanio.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;  

        1)  get_particiones_fdisk ;;           
        2)  get_particiones_fstab ;;
        3)  get_particiones_proc_mounts ;;           
        4)  get_particiones_df ;;            
        5)  get_particiones_ls ;;          
        6)  get_particiones_lsblk ;;
        7)  get_informacion_particion_hdparm ;;           

        11) get_uso_particion_df ;;           
        12) get_uso_path_du ;;

        81) get_ayuda_discos1 ;;       
        82) get_ayuda_discos1 ;;
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done