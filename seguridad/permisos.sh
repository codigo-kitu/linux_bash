#!/bin/bash

opcion=0
linea=""

path=""
permisos=""
parametros="";
usuario="";

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPERMISOS\n"
    
    echo -e "\tVISUALIZAR"
	echo -e "\t1. Permisos(ls)"
    echo -e "\t2. Usuario Dueno(find)"
    echo -e "\t3. Atributos(lsattr)"

    echo -e "\n\tCONFIGURAR"
    echo -e "\t6. Cambiar Permisos(chmod)"
    echo -e "\t7. Cambiar Dueno(chmown)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Permisos(ls)"
    echo -e "\t\t82. Ayuda Permisos(attr)"
    echo -e "\t\t83. Ayuda Permisos(imagen)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_cambiar_permisos() {
	clear
	
    echo -e "-----------Cambiar Permisos(chmod)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents/file1.txt,/home/bydan/Documents,etc): " path
    read -p "Permisos(4->Read,2->Write,1->Execute,777,555,357): " permisos
    read -p "Ingrese Parametros([VACIO],-R recursivo): " parametros

    sudo chmod $parametros $permisos $path

    sudo ls -l $path
} 

get_cambiar_dueno() {
	clear
	
    echo -e "-----------Cambiar Dueno(chown)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents/file1.txt,/home/bydan/Documents,etc): " path
    read -p "Usuario Dueno(bydan,danby,root,etc): " usuario
    read -p "Ingrese Parametros([VACIO],-R recursivo): " parametros

    sudo chown $parametros $usuario $path
} 

get_visualizar_permisos() {
	clear
	
    echo -e "-----------Visualizar Permisos(ls)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents,/etc,etc): " path

    sudo ls -l $path
}  

get_visualizar_usuario_dueno() {
	clear
	
    echo -e "-----------Visualizar Usuario Dueno(find)-------------"
    echo
    
    read -p "Ingrese Path /home/bydan/gPodder: " path
    read -p "Ingrese Nivel Busqueda(1,2,3,4,5): " nivel
    read -p "Usuario Dueno(bydan,danby,root,etc): " usuario
    
    find $path -maxdepth $nivel -user $usuario
} 

get_visualizar_atributos() {
	clear
	
    echo -e "-----------Visualizar Atributos(lsattr)-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents,/etc,etc): " path

    sudo lsattr $path
}  

get_ayuda_permisos1() {
    feh "./imagen/02_intermedio/02_atributos_permisos/021_atributos_permisos.jpg"
}

get_ayuda_permisos2() {
    feh "./imagen/02_intermedio/02_atributos_permisos/022_atributos_permisos.jpg"
}

get_ayuda_permisos3() {
    feh "./imagen/02_intermedio/02_atributos_permisos/023_atributos_permisos.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_visualizar_permisos ;;       
        2)  get_visualizar_usuario_dueno ;;           
        3)  get_visualizar_atributos;;                 
        6)  get_cambiar_permisos;; 
        7)  get_cambiar_dueno;;   

        81) get_ayuda_permisos1;;
        82) get_ayuda_permisos2;;        
        83) get_ayuda_permisos3;;

        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done