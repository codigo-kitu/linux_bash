#!/bin/bash

opcion=0


get_menu_opciones() {
    
    clear
    echo
    echo -e "\t\t\tComandos\n"

    echo -e "\t1. Informacion Comando(type)"
    echo -e "\t2. Busqueda Comando(apropos)"
    echo -e "\t3. History Comando(history)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Comandos 1(Who,Type,Ls)"
    echo -e "\t\t82. Ayuda Comandos 2(History)"
    echo -e "\t\t83. Ayuda Comandos 3(Man,Apropos,Which)"
    echo -e "\t\t84. Ayuda Comandos 4(Echo,Pwd,Cat,Uname)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_info_comando() {
    comando=""
    
    read -p "Ingresa Comando(ls,cd,pwd,etc): " comando

    #type -a $comando
    
    echo -e "-----------Type-------------" 
    type $comando      
    
    echo -e "-----------What is-------------" 
    whatis $comando
    
    echo -e "-----------Which-------------" 
    which $comando
    
    echo -e "-----------Where is-------------" 
    #whereis $comando
    for wi in $(whereis $comando); do 
		echo -e "-> $wi";
	done
	
	#Aparece Man Ayuda y dana otros resultados
    #echo -e "-----------Info-------------" 
    #info $comando
}

get_busqueda_comando() {
    clave=""

    echo -e "-----------Busqueda-------------"
    
    read -p "Ingrese Palabra Clave: " clave

    apropos $clave
}

get_history_comando() {
    cantidad=0

    echo -e "-----------History-------------"
    
    read -p "Ingrese Cantidad(history x): " cantidad

    history $cantidad
}

get_ayuda_comandos1() {
    feh "./imagen/01_basico/03_basico.jpg"
}

get_ayuda_comandos2() {
    feh "./imagen/02_intermedio/04_history.jpg"
}

get_ayuda_comandos3() {
    feh "./imagen/02_intermedio/05_ayuda/051_ayuda.jpg"
}

get_ayuda_comandos4() {
    feh "./imagen/02_intermedio/05_ayuda/052_ayuda.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_info_comando ;;        
        2)  get_busqueda_comando ;;                
        3)  get_history_comando ;;
        
        81) get_ayuda_comandos1 ;;
        82) get_ayuda_comandos2 ;;
        83) get_ayuda_comandos3 ;;
        84) get_ayuda_comandos4 ;;

        *)  echo -e "Seleccion Incorrecta";;
        
    esac

echo
echo 
echo -e "Presione la tecla Enter para continuar"

read linea

done
