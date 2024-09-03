#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tUSUARIOS\n"

    echo -e "\t1. Usuarios(who,users)"
    echo -e "\t2. Usuarios W(w)"
    echo -e "\t3. Usuarios Id(id)"
    echo -e "\t4. Usuarios Etc(/etc/passwd)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Usuarios 1(Id,Add,Su,Sudo)"
    echo -e "\t\t82. Usuarios 2(groups, w,chown)"
    echo -e "\t\t83. Permisos Usuarios 3(ls,stat)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_info_usuario() {
	clear
	
    echo -e "-----------Who-------------"
    who

    echo -e "-----------Who Am I-------------"
    whoami
    
    echo -e "-----------Users-------------"
    users
    
    echo -e "-----------Uptime-------------"
    uptime
    
    echo -e "-----------Tty-------------"
    tty
}

get_info_usuario_w() {    
	clear
	
    echo -e "-----------W-------------"
    w
}

get_info_usuario_id() {    
	clear
	
    echo -e "-----------Id-------------"
	for g2 in $(id); do
		echo -e "-> $g2"
	done
}

get_info_usuario_etc() {  
	clear
	   
    echo -e "-----------Passwd-------------"
    cat /etc/passwd    
}
  
get_ayuda_usuarios1() {
    feh "./imagen/03_avanzado/02_administracion/021_usuarios.jpg"
}

get_ayuda_usuarios2() {
    feh "./imagen/03_avanzado/02_administracion/022_usuarios.jpg"
}

get_ayuda_permisos_usuarios3() {
    feh "./imagen/03_avanzado/02_administracion/023_usuarios_permisos.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_info_usuario ;;          
        2)  get_info_usuario_w ;;           
        3)  get_info_usuario_id ;;            
        4)  get_info_usuario_etc ;;

        81) get_ayuda_usuarios1 ;;
        82) get_ayuda_usuarios2 ;;
        83) get_ayuda_permisos_usuarios3 ;;
        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done