#!/bin/bash

opcion=0
linea=""

parametros=""
ip=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tNETWORK TOOLS\n"
    
	echo -e "\t1. Ping(ping)"

    echo -e "\n\t----- ROUTE -----"
    echo -e "\t\t2. IP Route (ip route)"
    echo -e "\t\t3. Route (route)"
    echo -e "\t\t4. Traceroute (traceroute)"

    echo -e "\n\t----- NMAP -----"
    echo -e "\t\t5. Nmap General (nmap)"
    echo -e "\t\t6. Nmap Detalle (nmap)"

    echo -e "\n\t----- NETSTAT -----"
    echo -e "\t\t7. Netstat General (netstat)"
    echo -e "\t\t8. Netstat Conexiones (netstat)"
    echo -e "\t\t9. Netstat Servicios (netstat)"
    echo -e "\t\t10. Netstat Servicios Detalle (netstat)"
    echo -e "\t\t11. Netstat Buscar (netstat)"

    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda NetworkTool 1(Route,Dns,Ping,Traceroute,Nmap)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_netstat_general_tool() {
	clear	
    echo
    echo -e "-----------Netstat General (netstat)-------------"
    
    #read -p "Ingrese el Url/IP a consultar(localhost,www.google.com,etc): " ip
    
    echo -e "\n\t----- PARAMETROS -----"
    echo -e "\t\t [VACIO] Ninguno"
    echo -e "\t\t  (-i)   Estadisticas"
    echo -e "\t\t  (-r)   Routing"
    echo -e "\t\t  (-t)   TCP"
    echo -e "\t\t  (-l)   Listening"
    echo -e "\t\t  (-n)   Numeros"

    read -p "Construya los Parametros: " parametros

    netstat $parametros
}

get_netstat_conexiones_tool() {
	clear
	
    echo -e "-----------Nmap Conexiones (netstat)-------------"
    echo
    
    netstat -tup
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_netstat_servicios_tool() {
	clear
	
    echo -e "-----------Nmap Servicios (netstat)-------------"
    echo
    
    sudo netstat -tupl
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_netstat_servicios_detalle_tool() {
	clear
	
    echo -e "-----------Nmap Servicios Detalle (netstat)-------------"
    echo
    
    sudo netstat -platune
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_netstat_buscar_tool() {
	clear
	
    echo -e "-----------Nmap Buscar (netstat)-------------"
    echo
    
    read -p "Ingrese el Servicio a Buscar: " servicio

    sudo netstat -platune | grep $servicio
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_nmap_general_tool() {
	clear
	
    echo -e "-----------Nmap General (nmap)-------------"
    echo
    
    read -p "Ingrese el IP/Url(localhost,192.168.0.1,google.com,etc): " ip

    nmap $ip
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_nmap_detalle_tool() {
	clear
	
    echo -e "-----------Nmap Detalle (nmap)-------------"
    echo
    
    read -p "Ingrese el IP/Url(localhost,192.168.0.1,google.com,etc): " ip

    sudo nmap -sT -sU -PO -O $ip
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
} 

get_ping_tool() {
	clear
	
    echo -e "-----------Ping Tool(ping)-------------"
    echo
    
    read -p "Ingrese el IP/Url(localhost,192.168.0.1,etc): " ip

    ping -c 3 $ip
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_iproute_tool() {
	clear
	
    echo -e "-----------IP Route Tool(ip route)-------------"
    echo
    
    ip route show
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}

get_route_tool() {
	clear
	
    echo -e "-----------IP Route(route)-------------"
    echo
    
    read -p "Ingrese Parametros(-n,[VACIO],etc): " parametros

    route $parametros
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}

get_traceroute_tool() {
	clear
	
    echo -e "-----------IP Route(route)-------------"
    echo
    
    read -p "Ingrese el Url/IP (www.google.com,192.168.100.1,etc): " ip

    traceroute $ip
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}

get_ayuda_networktool1() {
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
            
        1)  get_ping_tool ;;            
        2)  get_iproute_tool;;          
        3)  get_route_tool ;;            
        4)  get_traceroute_tool;;
        5)  get_nmap_general_tool ;;            
        6)  get_nmap_detalle_tool;;
        7)  get_netstat_general_tool;;          
        8)  get_netstat_conexiones_tool ;;            
        9)  get_netstat_servicios_tool;;
        10) get_netstat_servicios_detalle_tool ;;            
        11) get_netstat_buscar_tool;;        

        81) get_ayuda_networktool1;;        
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done