#!/bin/bash

# Auto Mount
# /dev/disk/by-uuid/68C62F07C62ED4DA /mnt/68C62F07C62ED4DA auto nosuid,nodev,nofail,x-gvfs-show 0 0

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPARTE III: PERSONALIZACION\n"
    
    echo -e "\t1. Instalar Neofetch (neofetch)"
    echo -e "\t2. Instalar Terminal (rxvt-unicode) --> (7MB)"	
    echo -e "\t3. Instalar OpenSsh (openssh)"
    echo -e "\t4. Instalar Imagenes (feh) --> (3MB)"
    echo -e "\t5. Instalar Drivers (xf86-video-intel,etc) --> (OPCIONAL)"
    echo -e "\t6. Instalar Xorg (xorg,xorg-server) --> (70MB) "
    echo -e "\t7. Instalar Display Manager (lightdm,lightdm-gtk-greeter) --> (40MB) "
    echo -e "\t8. Instalar i3 (i3-wm,i3lock,i3-status,dmenu) --> (2MB) "
    echo -e "\t9. Instalar Open Box (openbox,tint2) --> (7MB) "
    echo -e "\t10. Instalar File Manager (thunar) --> (3MB) "                
    echo -e "\t11. Instalar Fuentes (noto-fonts,ttf-incosolata,ttf-linux-libertine) --> (26MB) "       
    #echo -e "\t12. Instalar Network Manager Applet(nm-applet)"
    echo -e "\t99. TODO (Personalizacion)" 

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

#-------------------------PARTE III (PERSONALIZACION)-----------------------------------

exec_instalar_neofetch() {
    echo -e "------------------1.- Instalar Neofetch (neofetch) --> (7MB)---------------------------"

    pacman -S neofetch
    
    neofetch
}

exec_instalar_terminal() {
    echo -e "------------------2.- Instalar Terminal (rxvt-unicode) --> (7MB) ---------------------------"

    pacman -S rxvt-unicode
}

exec_instalar_openssh() {
    echo -e "------------------3.- Instalar OpenSsh (openssh)---------------------------"

    pacman -S openssh

    systemctl enable sshd
}

exec_instalar_feh() {
    echo -e "------------------4. Instalar Imagenes (feh) --> (3MB)---------------------------"

    pacman -S feh
}

exec_instalar_drivers() {
    echo -e "------------------5.- Instalar Drivers (xf86-video-intel,etc = 40MB) --> (OPCIONAL) ---------------------------"

    pacman -S xf86-video-intel xf86-video-fbdev xf86-input-evdev
}

exec_instalar_xorg() {
    echo -e "------------------6.- Instalar Xorg (xorg,xorg-server) --> (70MB) ---------------------------"

    pacman -S xorg xorg-server
    #xorg-init (NO Existe)
}

exec_instalar_display_manager() {
    echo -e "------------------7. Instalar Display Manager (lightdm,lightdm-gtk-greeter) --> (40MB)------------------------"

    sudo pacman -S lightdm lightdm-gtk-greeter

    sudo systemctl enable lightdm.service    
}


exec_instalar_i3() {
    echo -e "------------------8.- Instalar i3 (i3-wm,i3lock,i3status,dmenu) --> (2MB) ----------------------"

    pacman -S i3-wm i3lock i3status dmenu
}

exec_instalar_openbox() {
    echo -e "------------------9.- Instalar Open Box (openbox,tint2) --> (7MB) ------------------------"

    pacman -S openbox tint2
}

exec_instalar_thunar() {
    echo -e "------------------10.- Instalar File Manager (thunar)---------------------------"

    pacman -S thunar
}

exec_instalar_fonts {
    echo -e "---------11.- Instalar Fuentes(noto-fonts,ttf-incosolata,ttf-linux-libertine) --> (26MB) --------------"

    pacman -S noto-fonts ttf-incosolata ttf-linux-libertine
}

exec_instalar_network_manager {
    echo -e "------------------12.- Instalar Network Manager Applet(nm-applet)---------------------------"
    #NO EXISTE paquete y tiene dependencias internas con XFCE
    pacman -S nm-applet
}

#exec_instalar_xfce4() {
#echo -e "------------------31.- Inicio---------------------------"
#pacman -S xfce4
#startxfce4
#}

exec_todo_personalizacion() {
    exec_instalar_neofetch    
    exec_instalar_terminal
    exec_instalar_openssh                   
    exec_instalar_feh
    exec_instalar_drivers       
    exec_instalar_xorg
    exec_instalar_display_manager
    exec_instalar_i3
    exec_instalar_openbox
    exec_instalar_thunar   
    exec_instalar_fonts
    #exec_instalar_network_manager    
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
			exec_instalar_neofetch ;;
        2)
            exec_instalar_terminal ;;
        3)
			exec_instalar_openssh ;;                     
        4)
			exec_instalar_feh ;; 
        5)
            exec_instalar_drivers ;;        
        6)
            exec_instalar_xorg ;;
        7)
            exec_instalar_display_manager ;;
        8)
            exec_instalar_i3 ;;
        9)
            exec_instalar_openbox ;;
        10)
			exec_instalar_thunar ;;
        11)
            exec_instalar_fonts ;;
        99)
            exec_todo_personalizacion ;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done

