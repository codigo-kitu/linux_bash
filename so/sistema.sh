#!/bin/bash

opcion=0
linea=""

variable=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tSistema\n"

    echo -e "\t1. Informacion General Sistema(neofetch)"
    echo -e "\t2. Variables de Sistema(HOME,SHELL)"
    echo -e "\t3. Busqueda Variables Sistema(env)"
    echo -e "\t4. Encoding del Sistema(iconv)"
    
    echo -e "\t5. Otro(otr)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Comandos 2(History)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_info_general_system() {
    neofetch
}

get_system_variable() {
	clear
	
    echo -e "Home: $HOME"
    echo -e "Shell: $SHELL"
    echo -e "Log Name: $LOGNAME"
    echo -e "$$: $$"
    echo -e "Hostname: $HOSTNAME"
    echo -e "Groups: $GROUPS"
    echo -e "Histfile: $HISTFILE"
    echo -e "Pid: $PID"   
    echo -e "Random: $RANDOM"
    echo -e "Seconds: $SECONDS"
    echo -e "Uid: $UID"
    echo -e "Pwd: $PWD"
    echo -e "Path: $PATH"
}

get_busqueda_system_variable() {

    read -p "Ingrese la Variable a Buscar(PATH,TERM,HOME): " variable

    env | grep $variable
}

get_encoding() {
	clear
	
	iconv -l
}

#get_system_variable
#get_encoding

get_ayuda_sistema1() {
    feh "./imagen/02_intermedio/04_history.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break 
            ;;

        1)  get_info_general_system ;;            
        2)  get_system_variable ;;            
        3)  get_busqueda_system_variable ;;        
        4)  get_encoding ;;            
        5)  exec_upgrade_mint ;;

        81) get_ayuda_sistema1 ;;        
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo -e "Presione la tecla Enter para continuar"

read linea

done

