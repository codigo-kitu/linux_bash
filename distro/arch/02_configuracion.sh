#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tPARTE II: CONFIGURACION\n"
    
	echo -e "\t1. Configurar Tabla Particiones(genfstab)"
    echo -e "\t2. Cambiar Root SO(arch-chroot)"
    echo -e "\t3. Instalar Nano(pacman)"
    echo -e "\t4. Configurar Zona(hwclock,locale-gen)"
    echo -e "\t5. Configurar Teclado(KEYMAP)"
    echo -e "\t6. Configurar Hostname(/etc/hostname)"
    echo -e "\t7. Configurar Hosts(/etc/hosts)"
    echo -e "\t8. Configurar Red(networkmanager --> 20MB)"
    echo -e "\t9. Configurar Usuarios(useradd,passwd)"
    echo -e "\t10. Instalar Grub(grub-bios --> 7MB)"
    echo -e "\t11. Configurar Grub(os-prober,mkinitcpio --> 20MB)"
    echo -e "\t12. Salir Root Iso(exit)"
    echo -e "\t13. Desmontar Particiones(umount) --> (OPCIONAL)"
    echo -e "\t14. Salir Root Iso(exit)"
    echo -e "\t15. Actualizar Grub Linux 2(update-grub,reboot)"
    echo -e "\t16. Procesar Ping(ping --> (OPCIONAL))"
    echo -e "\t17. Actualizar SO(pacman -Syyu)"
    
    echo -e "\t99. TODO (Configuracion)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

#-------------------------PARTE II (CONFIGURACION)-----------------------------------

exec_configurar_tabla_particiones() {
    echo -e "------------------1.- Configurar Tabla Particiones(genfstab)---------------------------"

    genfstab -U /mnt >> /mnt/etc/fstab

    echo -e "---Comprobar---"

    cat /mnt/etc/fstab
}

exec_cambiar_root_so() {
    echo -e "------------------2.- Cambiar Root SO(arch-chroot)---------------------------"

    arch-chroot /mnt
    
    ls
}

exec_instalar_nano() {
    echo -e "------------------3.- Instalar Nano(pacman)---------------------------"

    pacman -S nano
}

exec_configurar_zona() {
    echo -e "------------------4.- Configurar Zona(hwclock,locale-gen)---------------------------"

    ln -sf /usr/share/zoneinfo/America/Guayaquil /etc/localtime

    hwclock --systohc

    locale-gen
}

exec_configurar_teclado() {
    echo -e "------------------5.- Configurar Teclado(KEYMAP)---------------------------"

    echo KEYMAP = es > /etc/vconsole.conf

    cat /etc/vconsole.conf
}

exec_configurar_hostname() {
    echo -e "------------------6.- Configurar Hostname(/etc/hostname)---------------------------"
    
    read -p "Ingrese Hostname(fo_lxar_pc,etc): " host_name

    echo $host_name > /etc/hostname
        
    cat /etc/hostname
}

exec_configurar_hosts() {
    echo -e "------------------7.- Configurar Hosts(/etc/hosts)---------------------------"

    #read -p "Ingrese Hostname(fo_lxar_pc,etc): " host_name

    echo -e "127.0.0.1 localhost" >> /etc/hosts
    echo -e "::1 localhost"  >> /etc/hosts
    echo -e "127.0.0.1 $host_name.localdomain $host_name"  >> /etc/hosts

    #nano /etc/hosts

    cat /etc/hosts
}

exec_configurar_red() {
    echo -e "------------------8.- Configurar Red(networkmanager --> 20MB)---------------------------"

    pacman -S networkmanager

    systemctl enable NetworkManager
}

exec_configurar_usuarios() {
    echo -e "------------------9.- Configurar Usuarios(useradd,passwd)---------------------------"

    passwd root

    read -p "Ingrese Nombre de Usuario(danby): " usuario

    useradd -m -g users -G wheel -s /bin/bash $usuario

    passwd $usuario
    
    #(root ALL)
    #nano /etc/sudoers
}

exec_instalar_grub() {
    echo -e "------------------10.- Instalar Grub(grub-bios --> 7MB)---------------------------"

    pacman -S grub-bios

    #grub-install /dev/sda
}

exec_configurar_grub() {
    echo -e "------------------11.- Configurar Grub(os-prober,mkinitcpio --> 20MB)---------------------------"

    pacman -S os-prober linux-headers
    
    mkinitcpio -P
}

exec_salir_root_iso() {
    echo -e "------------------12.- Salir Root Iso(exit)---------------------------"

    #Root ISO
    exit
}

exec_desmontar_particiones() {
    echo -e "------------------13.- Desmontar Particiones(umount) --> (OPCIONAL)---------------------------"

    #Home
    read -p "Ingrese Particion Home(sda3,etc): " particion_home
    umount /dev/$particion_home

    #Boot
    read -p "Ingrese Particion Boot(sda2,etc): " particion_boot
    umount /dev/$particion_boot

    #Root
    read -p "Ingrese Particion Root(sda1,etc): " particion_root
    umount /dev/$particion_root
}

#REPETIDO ES 12
#exec_salir_root_iso() {
#echo -e "------------------14.- Salir Root Iso(exit)---------------------------"
#Root ISO
#exit
#reboot
#}

exec_reiniciar() {
    echo -e "------------------15.- Actualizar Grub Linux 2(update-grub,reboot)---------------------------"

    echo -e "----En LINUX MINT----"
    
    #sudo grub-mkconfig -o /boot/grub/grub.cfg"

    #sudo update-grub

    reboot
}

exec_procesar_ping() {
    echo -e "------------------16.- Procesar Ping(ping) --> (OPCIONAL)---------------------------"
    
    read -p "Ingrese Url(google.com,etc): " url

    ping -c 3 $url
}

exec_actualizar_so() {
    echo -e "------------------17.- Actualizar SO(pacman -Syyu)---------------------------"

    pacman -Syyu
}

exec_todo_configuracion() {
    exec_configurar_tabla_particiones ;;            
    exec_cambiar_root_so;;          
    exec_instalar_nano ;;            
    exec_configurar_zona;;
    exec_configurar_teclado ;;            
    exec_configurar_hostname;;          
    exec_configurar_hosts ;;            
    exec_configurar_red;; 
    exec_configurar_usuarios ;;            
    exec_instalar_grub;;          
    exec_configurar_grub ;;            
    exec_salir_root_iso;;
    exec_desmontar_particiones ;;            
    exec_salir_root_iso;;          
    exec_reiniciar ;;            
    exec_procesar_ping;; 
    exec_actualizar_so;;    
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
			exec_configurar_tabla_particiones ;;            
        2)
            exec_cambiar_root_so;;          
        3)
			exec_instalar_nano ;;            
        4)
            exec_configurar_zona;;
        5)
			exec_configurar_teclado ;;            
        6)
            exec_configurar_hostname;;          
        7)
			exec_configurar_hosts ;;            
        8)
            exec_configurar_red;; 
        9)
			exec_configurar_usuarios ;;            
        10)
            exec_instalar_grub;;          
        11)
			exec_configurar_grub ;;            
        12)
            exec_salir_root_iso;;
        13)
			exec_desmontar_particiones ;;            
        14)
            exec_salir_root_iso;;          
        15)
			exec_reiniciar ;;            
        16)
            exec_procesar_ping;; 
        17)
            exec_actualizar_so;;
        99)
            exec_todo_configuracion;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done
