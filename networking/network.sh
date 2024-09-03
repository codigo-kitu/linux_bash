#!/bin/bash

opcion=0
linea=""

enlace=""
ip=""
uuid=""
parametros=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tNETWORK\n"
    
	echo -e "\t\t------LOCAL--------"
    echo -e "\t1. Host Informacion"
    echo -e "\t2. LocalHost Informacion"

    echo -e "\n\t----- LOCAL NETWORK -----"
    echo -e "\t\t3. Interfaces(/etc/network/interfaces)"
    echo -e "\t\t4. If Config(ifconfig)"
    echo -e "\t\t5. Ip Link(ip link)"
    echo -e "\t\t6. Ip Link Address(ip address)"
    echo -e "\t\t7. Driver(ethtool)"

    echo -e "\n\t----- NETWORK -----"
    echo -e "\t\t8. Url/IP Host Informacion"
    echo -e "\t\t9. Url/IP NsLookup Informacion"
    echo -e "\t\t10. Url/IP Arp Informacion"
    
    echo -e "\n\t----- TOOLS -----"
    echo -e "\t\t11. Estado Enlace (mii-tool)"
    echo -e "\t\t12. Estadisticas Network(ethtool)"
    echo -e "\t\t13. DNS Resolv(/etc/resolv.conf)"
    echo -e "\t\t14. DNS Whois(whois)"
    echo -e "\t\t15. DNS Dig(dig)"
    
    echo -e "\n\t----- NETWORK MANAGER -----"
    echo -e "\t\t21. NManager Connections (nmcli connection)"
    echo -e "\t\t22. NManager Devices (nmcli device)"
    echo -e "\t\t23. NManager Configuracion (nnmtui)"
    echo -e "\t\t24. NManager Habilitar/Deshabilitar (nmcli connection)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Network 1(Ifconfig,Ip,Ifx)"
    echo -e "\t\t82. Ayuda Network 2(Route,Dns,Ping,Traceroute,Nmap)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_network_manager_habilitar_deshabilitar () {
    clear
    echo
    echo -e "-------- 24. Network Manager Habilitar/Deshabilitar (nmcli connection) --------"

    read -p "Ingrese Parametros(up,down): " parametros
    read -p "Ingrese Parametros(id Connection): " uuid

    nmcli connection $parametros $uuid
}

get_network_manager_configuration () {
    clear
    echo
    echo -e "-------- 23. Network Manager Configuracion (nnmtui) --------"

    nmtui
}

get_network_manager_connections () {
    clear
    echo
    echo -e "-------- 21. Network Manager Connections ( nmcli connection) --------"

    read -p "Ingrese Parametros(--active): " parametros

    nmcli connection show $parametros
}

get_network_manager_devices () {
    clear
    echo
    echo -e "-------- 22. Network Manager Devices ( nmcli device) --------"
    
    nmcli device show
}

get_dns_dig_tool_network() {
	clear
	
    echo
    echo -e "-------- DNS Dig(dig) --------"
    
    read -p "Ingrese el Url/IP a consultar(www.google.com,[VACIO],etc): " enlace

    dig $enlace
    
} 

get_dns_whois_tool_network() {
	clear
	
    echo
    echo -e "-------- DNS Whois(whois) --------"
    
    read -p "Ingrese el Url/IP a consultar(www.google.com,etc): " enlace

    whois $enlace
    
} 

get_dns_resolv_tool_network() {
	clear
	
    echo
    echo -e "-------- DNS Resolv(/etc/resolv.conf) --------"
    cat /etc/resolv.conf
    
} 

get_estadistica_tool_network() {
	clear
	
    echo
    echo -e "-------- Estadisticas Network(ethtool) --------"
    
    read -p "Ingrese el Enlace a consultar(enp3s0,etc): " enlace
    read -p "Ingrese Parametros(-S,[VACIO],etc): " parametros

    ethtool $parametros $enlace
    
} 

get_estado_tool_network() {
	clear
	
    echo
    echo -e "-------- Estado Enlace(mii-tool) --------"
    
    read -p "Ingrese el Enlace a consultar(enp3s0,etc): " enlace

    sudo mii-tool $enlace
    
} 

get_host_network() {
	clear	
    echo
    echo -e "-----------Host Network Informacion(host)-------------"
    
    read -p "Ingrese el Url/IP a consultar(localhost,www.google.com,etc): " ip
    
    echo -e "\n\t----- PARAMETROS -----"
    echo -e "\t\t (-t CNAME) CName"
    echo -e "\t\t (-t SOA)   Soa"
    echo -e "\t\t (-a)       Todos"
    echo -e "\t\t [VACIO]    Ninguno"
    
    read -p "Construya los Parametros: " parametros

    host $parametros $ip
}

get_nslookup_network() {   
    clear 
    echo
    echo -e "-------- NsLookup Network Informacion(nslookup) --------"

    read -p "Ingrese el Url/IP a consultar(localhost,www.google.com,etc): " ip

    nslookup $ip
}

get_arp_network() {    
    clear
    echo
    echo -e "-------- Arp Network Informacion(arp) --------"
    
    read -p "Ingrese el Url/IP a consultar(localhost,www.google.com,[VACIO],etc): " ip

    arp $ip
}

get_driver_lnetwork() {
	clear
	
    echo
    echo -e "-------- Driver Local Network(ethtool) --------"
    
    read -p "Ingrese el Enlace a consultar(enp3s0,etc): " enlace

    ethtool -i $enlace
    
} 

get_interfaces_lnetwork() {
	clear
	
    echo
    echo -e "-------- Interfaces(/etc/network/interfaces) --------"
    cat /etc/network/interfaces
    
}  

get_iplink_lnetwork() {
	clear
	
    echo
    echo -e "-----------IP Link-------------"

    read -p "Ingrese el Enlace a consultar(enp3s0,lo,[VACIO]etc): " enlace

    ip link show $enlace
}

get_iplink_show_lnetwork() {
	clear
	
    echo
    echo -e "-----------IP Link-------------"

    read -p "Ingrese el Enlace a consultar(enp3s0,lo,[VACIO]etc): " enlace

    ip address show $enlace
}

get_ifconfig_lnetwork() {
	clear
	
    echo
    echo -e "-----------If Config Informacion-------------"

    read -p "Ingrese el Enlace a consultar(enp3s0,lo,[VACIO]etc): " enlace

    ifconfig $enlace
}

get_informacion_host() {
	clear
	
    echo
    echo -e "-----------Host Informacion-------------"
    echo -e "Hostname(hostname): $(hostname)"
    
    echo
    echo -e "-------- Hosts(/etc/hosts) --------"
    cat /etc/hosts
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_informacion_localhost() {
	clear
	
    echo
    echo -e "-----------LocalHost Informacion-------------"
    
    echo
    echo -e "-------- Host(host) --------"
    host localhost
    
    echo
    echo -e "-------- Ip(hostname) --------"
    hostname -I

    echo
    echo -e "-------- Arp(arp) --------"
    arp
    
    echo
    echo -e "-------- NsLookup(nslookup) --------"
    nslookup localhost
}

get_ayuda_network1() {
    feh "./imagen/03_avanzado/03_networking/031_networking.jpg"
}

get_ayuda_network2() {
    feh "./imagen/03_avanzado/03_networking/032_networking.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_informacion_host ;;            
        2)  get_informacion_localhost;;        
        3)  get_interfaces_lnetwork;;              
        4)  get_ifconfig_lnetwork;;          
        5)  get_iplink_lnetwork;;              
        6)  get_iplink_show_lnetwork;;        
        7)  get_driver_lnetwork;;  
        8)  get_host_network;;          
        9)  get_nslookup_network;;              
        10) get_arp_network;; 
        11) get_estado_tool_network;;          
        12) get_estadistica_tool_network;;              
        13) get_dns_resolv_tool_network;;      
        14) get_dns_whois_tool_network;;
        15) get_dns_dig_tool_network;;

        21) get_network_manager_connections;;         
        22) get_network_manager_devices;;
        23) get_network_manager_configuration;;
        24) get_network_manager_habilitar_deshabilitar;;

        81) get_ayuda_network1;;
        82) get_ayuda_network2;;        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done