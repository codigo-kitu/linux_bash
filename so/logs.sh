#!/bin/bash

opcion=0
linea=""

clave=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tLogs\n"

    echo -e "\t1. Inicio Kernel(dmesg)"
    echo -e "\t2. Boot Log Grub(journalctl)"
    echo -e "\t3. Kernel(/var/log/kern.log)"
    echo -e "\t4. Log General(/var/log/)"
    echo -e "\t5. Reboot(last reboot)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Logs 1(/var,config,new)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_log_ini_kernel() {
	clear
	echo -e "-----------1. Inicio Kernel(dmesg)-------------"
    
    dmesg
}

get_log_boot_grub() {
	clear
	echo -e "-----------2. Boot Grub Log(journalctl)-------------"
    
    journalctl -b
}

get_log_kernel() {
	clear
	echo -e "-----------3. Kernel(/var/log/kern.log)-------------"
    
    sudo tail -f /var/log/kern.log
}

get_log_general() {
	clear
	echo -e "-----------4. Log General(/var/log/)-------------"
    
    #read -p "Ingrese Path /home/bydan/gPodder: " path
    #read -p "Ingrese Nivel Busqueda(1,2,3,4,5): " nivel
    
    read -p "Ingrese nombre clave(Usar *): " clave
    
    sudo find /var/log -name $clave
}

get_log_reboot() {
	clear
	echo -e "-----------5. Reboot(last reboot)-------------"
    
    sudo last reboot
}

get_ayuda_logs1() {
    feh "./imagen/02_intermedio/08_logs.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;           
        
        1)  get_log_ini_kernel ;;          
        2)  get_log_boot_grub ;;
        3)  get_log_kernel ;;       
        4)  get_log_general ;;            
        5)  get_log_reboot ;;        

        81) get_ayuda_logs1 ;;        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done
