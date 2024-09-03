#!/bin/bash

opcion=0
distro=""
linux=""

distro=$(uname -a)


if [[ $distro == *"UBUNTU"* ]] || [[ $distro == *"Ubuntu"* ]]; then
   	linux="mint"
elif [[ $distro == *"MANJARO"* ]] || [[ $distro == *"Manjaro"* ]]; then
    linux="manjaro"
else
    echo "NO COINCIDE ninguna Version"
fi


get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tActualizaciones LINUX\n"

    echo -e "\t1. Actualizar TODO"
    echo -e "\t2. Actualizar Aplicaciones(update)"
    echo -e "\t3. Actualizar Nuevas Versiones Aplicaciones(upgrade)"
    echo -e "\t4. Actualizar Sistema Operativo(dist-upgrade)"
    echo -e "\t5. Limpiar Aplicaciones/Sistema Operativo(autoremove,clean)\n\n"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Actualizaciones(Install,Update,Upgrade)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

exec_update_all() {

    if [ $linux == "mint" ]; then
        exec_update_all_mint

    elif [ $linux == "manjaro" ]; then
        exec_update_all_manjaro
    fi
}

exec_update_all_manjaro() {
    echo '----------------------------UPGRADE/UPDATE MANJARO (sudo pacman -Syyu)--------------------';
    sudo pacman-mirrors -f 5
    #sudo pacman-mirrors --fasttrack 5
    sudo pacman -Syyu
}

exec_update_all_mint() {
   exec_update_mint
   exec_upgrade_mint
   exec_dist_upgrade_mint
   exec_autoremove_mint
   exec_clean_mint
}

exec_update_mint() {
    echo '----------------------------UPDATE MINT (sudo apt-get update)--------------------';
    #sudo pacman-mirrors -f 5
    #sudo pacman-mirrors -g
    sudo apt-get update -y;
}

exec_upgrade_mint() {
    echo '----------------------------UPGRADE MINT (sudo apt-get upgrade)--------------------';
    sudo apt-get upgrade -y;
}

exec_dist_upgrade_mint() {
   echo '----------------------------DIST-UPGRADE MINT (sudo apt-get dist-upgrade)--------------------';
   sudo apt-get dist-upgrade -y;
}

exec_autoremove_mint() {
   echo '----------------------------REMOVE-AUTO MINT (apt-get autoremove)--------------------';
   sudo apt-get autoremove -y;
}

exec_clean_mint() {
   echo '----------------------------CLEAN MINT (apt-get clean)--------------------';
   sudo apt-get clean;
}

get_ayuda_actualizaciones() {
    feh "./imagen/03_avanzado/06_debian/061_debian.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
        
        1)  exec_update_all ;;
        2)  exec_update_mint ;;
        3)  exec_upgrade_mint ;;
        4)  exec_dist_upgrade_mint ;;
        
        5)
            exec_autoremove_mint ;
            exec_clean_mint ;;
        
        81) get_ayuda_actualizaciones ;;
        *)  echo -e "Seleccion Incorrecta";;
        
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done