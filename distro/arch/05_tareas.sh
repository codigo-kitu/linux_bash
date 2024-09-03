#!/bin/bash

opcion=0
particion=""
parametros=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\t-----------------------PARTE V: TAREAS-----------------------\n"
    
    echo -e "\n\t---------- USB -----------"
    echo -e "\t1. Verificar Conexion USB (lsusb)"
    echo -e "\t2. Verificar Particion(df->mounted) USB"
    echo -e "\t3. Verificar Enlace (dmesg grep;sdb,sdc,etc)"
    echo -e "\t4. Montar USB Stick (mount)"
    echo -e "\t5. Desmontar USB Stick (umount)"
    echo -e "\t6. Tarea 3"
   
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

exec_verificar_conexion_usb() {
    echo -e "------------------1. Verificar Conexion USB (lsusb)---------------------------"

    lsusb

    #read -p "Escoja una Opcion: " opcion
}

exec_verificar_particion_usb() {
    echo -e "------------------2. Verificar Particion(df) USB---------------------------"
    
    df -h
}

exec_verificar_enlace_usb () {
    echo -e "------------------3. Verificar Enlace (dmesg grep;sdb,sdc,etc)---------------"
    echo -e "\nVerificar palabras sdb1,sdc1,sda1,etc"

    read -p "Ingrese Parametros(sdb,sdc,sda,etc): " parametros

    sudo dmesg | grep $parametros*
}

exec_montar_usb_stick() {

    echo -e "------------------4. Montar USB Stick (mount)---------------------------"

    mkdir -p /mnt/usb_stick
    
    read -p "Ingrese la particion-enlace(sdc1,sdb1,sda1,etc): " particion

    mount /dev/$particion /mnt/usb_stick

    #mount -U UUID /mnt/usb_stick
}

exec_desmontar_usb_stick() {

    echo -e "------------------5. Desmontar USB Stick (umount)---------------------------"

    read -p "Ingrese la particion-enlace(sdc1,sdb1,sda1,etc): " particion

    umount /dev/$particion

    #mount -U UUID /mnt/usb_stick
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
            exec_verificar_conexion_usb;;           
        2)
            exec_verificar_particion_usb;;
        3)
            exec_verificar_enlace_usb;;
        4)
            exec_montar_usb_stick ;;
        5)
            exec_desmontar_usb_stick ;;
        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

    echo -e "Presione la tecla Enter para continuar"
    read linea

done
