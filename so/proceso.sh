#!/bin/bash

opcion=0
linea=""

servicio=""
accion=""
habilitacion=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPROCESOS / SERVICIOS\n"

    echo -e "\t1. Procesos(ps)"
    echo -e "\t2. Arbol de Procesos(pstree)"
    echo -e "\t3. Procesos Sistema(/proc/sys)"
    echo -e "\t4. Procesos Live(top)"
    echo -e "\t5. Procesos Reboot(last reboot)"
    echo -e "\t6. Procesos Carga(/proc/loadavg)"

    echo -e "\n\tSERVICIOS"
    echo -e "\t21. Listar Servicios(service)"
    echo -e "\t22. Servicio Accion (service - start,stop,restart)"
    echo -e "\t23. Servicio Habilitar/Deshabilitar (systemctl - enable,disable)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Procesos 1(ps,pstree)"
    echo -e "\t\t82. Ayuda Procesos 2(top,kill,nice)"
    echo -e "\t\t83. Ayuda Procesos 3(crontab)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesos() {
	clear
	echo -e "-----------1. Procesos(ps)-------------"
    
	echo
    echo -e "\t\t\tPARAMETROS Procesos\n"

    echo -e "\t(-f) Mas Atributos"
    echo -e "\t(-H) Jerarquia"
    echo -e "\t(-A) Todos Procesos Resumen"
    echo -e "\t(-ax) Todos los Procesos"
    echo -e "\t(| grep x) Busqueda Proceso x"
    #echo -e "\t0. Salir\n\n"
    
    read -p "Construya los Parametros: " linea
	
	clear 
	
	ps $linea
	
    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_tree_procesos() {
	
	modulo="";
	
	clear
	echo -e "-----------2. Arbol de Procesos(pstree)-------------"
       
    pstree
}

get_procesos_sistema() {
	clear
	echo -e "-----------3. Procesos Sistema(/proc/sys)-------------"
    
    ls -l /proc/sys
}

get_procesos_live() {
	clear
	echo -e "-----------4. Procesos Live(top)-------------"
    
    top
}

get_procesos_reboot() {
	clear
	echo -e "-----------5. Procesos Reboot(last reboot)-------------"
    
    last reboot
    
    dialog --checklist "Choose toppings:" 10 40 3 \
        1 Cheese on \
        2 "Tomato Sauce" on \
        3 Anchovies off
}

get_procesos_carga() {
	clear
	echo -e "-----------6. Procesos Carga(/proc/loadavg)-------------"
    
    cat /proc/loadavg
}

get_servicios_listar() {
	clear
	echo -e "-----------21. Listar Servicios(service)-------------"
    
    sudo service --status-all
}

get_servicio_accion() {
	clear
	echo -e "-----------22. Servicio Accion (service - start,stop,restart)-------------"
    
    read -p "Ingrese el nombre del servicio(mysql,apache2): " servicio
    read -p "Ingrese la accion a ejecutar(start,restart,stop): " accion

    sudo service $servicio $accion;
    
    echo -e "--- PROCESO EJECUTADO CORRECTAMENTE ---"
}

get_servicio_habilitacion() {
	clear
	echo -e "-----------23. Servicio Habilitar/Deshabilitar (systemctl - enable,disable)-------------"
    
    read -p "Ingrese el nombre del servicio(mysql,apache2): " servicio
    read -p "Ingrese el tipo de habilitacion a ejecutarse(enable,disable): " habilitacion

    sudo systemctl $habilitacion $servicio

    echo -e "--- PROCESO EJECUTADO CORRECTAMENTE ---"
}

get_ayuda_procesos1() {
    feh "./imagen/03_avanzado/04_procesos/041_procesos.jpg"
}

get_ayuda_procesos2() {
    feh "./imagen/03_avanzado/04_procesos/042_procesos.jpg"
}

get_ayuda_procesos3() {
    feh "./imagen/03_avanzado/04_procesos/043_procesos.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_procesos ;;           
        2)  get_tree_procesos ;;           
        3)  get_procesos_sistema ;;
        4)  get_procesos_live ;;
        5)  get_procesos_reboot ;;       
        6)  get_procesos_carga ;;

        21) get_servicios_listar ;; 
        22) get_servicio_accion ;; 
        23) get_servicio_habilitacion ;;       
        
        81) get_ayuda_procesos1 ;;       
        82) get_ayuda_procesos2 ;;
        83) get_ayuda_procesos3 ;;            
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done