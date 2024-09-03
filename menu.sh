#!/bin/bash

opcion=0

get_menu_opciones() {
    clear
    echo -e "\n\t\t----- LINUX -----\n"   
    echo -e "\t-------------- 1.- SISTEMA OPERATIVO-------"    
    echo -e "\t\t1. Kernel"
    echo -e "\t\t2. Sistema"
    echo -e "\t\t3. Comandos"
    echo -e "\t\t4. Tiempo"
    echo -e "\t\t5. Procesos / Servicios"
    echo -e "\t\t6. Entradas Salidas"
    echo -e "\t\t7. Lectura Archivos"
    echo -e "\t\t8. Archivos y Carpetas"
    echo -e "\t\t9. Logs"
    echo -e "\t-------------- 21.- SOFTWARE--------------"
    echo -e "\t\t21. Actualizaciones"
    echo -e "\t\t22. Paquetes"
    echo -e "\t\t23. Programas"
    echo -e "\t\t24. Compresion"
    echo -e "\t-------------- 31.- HARDWARE--------------"
    echo -e "\t\t31. CPU"
    echo -e "\t\t32. Memoria RAM"
    echo -e "\t\t33. Discos"
    echo -e "\t\t34. Usb"
    echo -e "\t\t35. Hardware"
    echo -e "\t\t36. CD-Rom"
    echo -e "\t-------------- 41.- NETWORKING--------------"
    echo -e "\t\t41. Network"
    echo -e "\t\t42. Network Tools"
    echo -e "\t\t43. Wireless"
    echo -e "\t-------------- 51.- UTIL--------------"
    echo -e "\t\t51. Menu Util"
    #echo -e "\t-------------- 61.- DEVELOPING--------------"
    #echo -e "\t\t61. Menu Developing"
    echo -e "\t-------------- 71.- SEGURIDAD--------------"
    echo -e "\t\t71. Grupos"
    echo -e "\t\t72. Usuarios"
    echo -e "\t\t73. Permisos"           
    echo -e "\t-------------- 81.- DISTRIBUCION--------------"
    echo -e "\t\t81. General"
    echo -e "\t\t82. Arch Linux"
    echo -e "\t-------------- 99.- AYUDA--------------"
    echo -e "\t\t99. Help"   
    echo -e "\t-------------- 0.- SALIR--------------"
    echo -e "\t\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion
}

#--------------SISTEMA OPERATIVO-------
exec_call_kernel() { "./so/kernel.sh"; }
exec_call_sistema() { "./so/sistema.sh"; }
exec_call_comandos() { "./so/comandos.sh"; }
exec_call_tiempo() { "./so/tiempo.sh"; }
exec_call_procesos_servicios() { "./so/proceso_servicio.sh"; }
exec_call_entradas_salidas() { "./so/entradas_salidas.sh"; }
exec_call_lectura_archivos() { "./so/lectura_archivos.sh"; }
exec_call_archivos_carpetas() { "./so/carpetas_archivos.sh"; }
exec_call_logs() { "./so/logs.sh"; }
#--------------SOFTWARE--------------
exec_call_actualizaciones() { "./software/actualizacion.sh"; }
exec_call_paquetes() { "./software/paquetes.sh"; }
exec_call_programas() { "./software/programas.sh"; }
exec_call_compresion() { "./software/compresion.sh"; }
#--------------HARDWARE--------------
exec_call_cpu() { "./hardware/cpu.sh"; }
exec_call_memoria_ram() { "./hardware/memoria.sh"; }
exec_call_discos() { "./hardware/discos.sh"; }
exec_call_usb() { "./hardware/usb.sh"; }
exec_call_hardware() { "./hardware/hardware.sh"; }
exec_call_cdrom() { "./hardware/cdrom.sh"; }
#--------------NETWORKING--------------
exec_call_network() { "./networking/network.sh"; }
exec_call_network_tools() { "./networking/net_tool.sh"; }
exec_call_wireless() { "./networking/wireless.sh"; }
#--------------UTIL--------------
exec_call_util_menu() { "./util_menu.sh"; }
#--------------DEVELOPING--------------
exec_call_developing_menu() { "./dev_menu.sh"; }
#--------------SEGURIDAD--------------
exec_call_grupos() { "./seguridad/grupos.sh"; }
exec_call_usuarios() { "./seguridad/usuarios.sh"; }
exec_call_permisos() { "./seguridad/permisos.sh"; }
#--------------DISTRIBUCION--------------
exec_call_distribucion_general() { "./distro/general/menu.sh"; }
exec_call_distribucion_arch_linux() { "./distro/arch/menu.sh"; }
#--------------AYUDA--------------
exec_call_help() { "./ayuda.sh"; }
#--------------SALIR--------------
exec_call_salir() { clear; echo -e "Proceso terminado correctamente..."; }

while [ 1 ]
do
    get_menu_opciones

    case ${opcion} in
        #--------------SALIR--------------
        0)  exec_call_salir; break ;;           
        #--------------SISTEMA OPERATIVO-------
        1)  exec_call_kernel ;;            
        2)  exec_call_sistema ;;           
        3)  exec_call_comandos ;;        
        4)  exec_call_tiempo ;;           
        5)  exec_call_procesos_servicios ;;           
        6)  exec_call_entradas_salidas ;;
        7)  exec_call_lectura_archivos ;;
        8)  exec_call_archivos_carpetas ;;           
        9)  exec_call_logs ;;
        #--------------SOFTWARE--------------
        21) exec_call_actualizaciones ;;           
        22) exec_call_paquetes ;; 
        23) exec_call_programas ;;       
        24) exec_call_compresion ;;
        #--------------HARDWARE--------------
        31) exec_call_cpu ;;        
        32) exec_call_memoria_ram ;;            
        33) exec_call_discos ;;           
        34) exec_call_usb ;;
        35) exec_call_hardware ;;           
        36) exec_call_cdrom ;; 
        #--------------NETWORKING--------------
        41) exec_call_network ;;       
        42) exec_call_network_tools ;;
        43) exec_call_wireless ;;
        #--------------UTIL--------------
        51) exec_call_util_menu ;;
        #--------------DEVELOPING(NO)--------------
        61) exec_call_developing_menu ;;
        #--------------SEGURIDAD--------------
        71) exec_call_grupos ;;        
        72) exec_call_usuarios ;;                 
        73) exec_call_permisos ;;
        #--------------DISTRIBUCION--------------
        81) exec_call_distribucion_general ;; 
        82) exec_call_distribucion_arch_linux ;;  
        #--------------AYUDA--------------
        99) exec_call_help ;;        
            
        *)  echo -e "Seleccion Incorrecta";;
    esac
done