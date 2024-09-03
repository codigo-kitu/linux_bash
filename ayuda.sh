#!/bin/bash

opcion=0

#-----------MENU PRINCIPAL----------------

get_menu_principal() {
    clear
    echo
    echo -e "\t\t\tImagenes Ayuda Linux Mint\n"

    echo -e "\t1. Basico"
    echo -e "\t2. Intermedio"
    echo -e "\t3. Avanzado"
    echo -e "\t4. Tips"
    echo -e "\t5. Ejemplos"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

#-----------MENU BASICO----------------

get_menu_basico() {
    clear
    echo
    echo -e "\t\t\tMENU BASICO LINUX\n"

    echo -e "\t1. Definicion"
    echo -e "\t2. Tips"
    echo -e "\t3. Basico"
    echo -e "\t4. Links"

    echo -e "\n\tARCHIVOS"
    echo -e "\t\t 5. Archivos 1"
    echo -e "\t\t 6. Archivos 2"
    echo -e "\t\t 7. Archivos 3"
    echo -e "\t\t 8. Archivos 4"
    echo -e "\t\t 9. Archivos 5"

    echo -e "\t\n0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_basico() {
	
	while [ 1 ]
	do

		get_menu_basico

		case $opcion in

			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			
			1)	feh "./imagen/01_basico/01_definicion.jpg";;
				#echo -e "Proceso 1...";;
				#get_menu_opciones_basico ;;				
			2)	feh "./imagen/01_basico/02_tips.jpg";;				
			3)	feh "./imagen/01_basico/03_basico.jpg";;			
			4)	feh "./imagen/01_basico/05_link.jpg";;				
			5)	feh "./imagen/01_basico/04_archivos_carpetas/041_archivos.jpg";;				
			6)	feh "./imagen/01_basico/04_archivos_carpetas/042_archivos.jpg";;			
			7)	feh "./imagen/01_basico/04_archivos_carpetas/043_archivos.jpg";;			
			8)	feh "./imagen/01_basico/04_archivos_carpetas/044_archivos.jpg";;			
			9)	feh "./imagen/01_basico/04_archivos_carpetas/045_archivos.jpg";;				
			
			*)  echo -e "Seleccion Incorrecta";;
		esac

	#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
	#read -n 1 linea

	done
}

#-----------MENU INTERMEDIO----------------

get_menu_intermedio() {
    clear
    echo
    echo -e "\t\t\tMENU BASICO INTERMEDIO\n"

    echo -e "\t1. Leer Archivos"
    echo -e "\t2. History"
    echo -e "\t3. Pipes"
    echo -e "\t4. Cd-ROM"
    echo -e "\t5. Logs"

    echo -e "\n\tATRIBUTOS Y PERMISOS"
    echo -e "\t\t 6. Atributos 1"
    echo -e "\t\t 7. Atributos 2"
    echo -e "\t\t 8. Atributos 3"

    echo -e "\n\tEDITOR DE TEXTO"
    echo -e "\t\t 9. Editor 1"
    echo -e "\t\t 10. Editor 2"

    echo -e "\n\tAYUDA"
    echo -e "\t\t 11. Ayuda 1"
    echo -e "\t\t 12. Ayuda 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_intermedio() {
	
	while [ 1 ]
	do

		get_menu_intermedio

		case $opcion in

			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			
			1)	feh "./imagen/02_intermedio/01_leer_archivos.jpg";;							
			2)	feh "./imagen/02_intermedio/04_history.jpg";;				
			3)	feh "./imagen/02_intermedio/06_pipes.jpg";;			
			4)	feh "./imagen/02_intermedio/07_cdrom.jpg";;				
			5)	feh "./imagen/02_intermedio/08_logs.jpg";;				
			6)	feh "./imagen/02_intermedio/02_atributos_permisos/021_atributos_permisos.jpg";;			
			7)	feh "./imagen/02_intermedio/02_atributos_permisos/022_atributos_permisos.jpg";;			
			8)	feh "./imagen/02_intermedio/02_atributos_permisos/023_atributos_permisos.jpg";;			
			9)	feh "./imagen/02_intermedio/03_editor_texto/031_editor_texto.jpg";;	
            10)	feh "./imagen/02_intermedio/03_editor_texto/032_editor_texto.jpg";;			
			11)	feh "./imagen/02_intermedio/05_ayuda/051_ayuda.jpg";;			
			12)	feh "./imagen/02_intermedio/05_ayuda/052_ayuda.jpg";;			
			
			*)  echo -e "Seleccion Incorrecta";;
		esac

	#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
	#read -n 1 linea

	done
}

#-----------MENU AVANZADO----------------

get_menu_avanzado() {
    clear
    echo
    echo -e "\t\t\tMENU BASICO AVANZADO\n"
    
    echo -e "\n\tEXPRESIONES DE BUSQUEDA"
    echo -e "\t1. Expresiones 1"
    echo -e "\t2. Expresiones 2"    

    echo -e "\n\tADMINISTRACION"
    echo -e "\t\t 3. Usuarios 1"
    echo -e "\t\t 4. Usuarios 2"
    echo -e "\t\t 5. Permisos de Usuarios"
    echo -e "\t\t 6. Particiones"
    echo -e "\t\t 7. Hardware"
    echo -e "\t\t 8. Software Tamano"
    
    echo -e "\n\tNETWORKING"
    echo -e "\t9. Networking 1"
    echo -e "\t10. Networking 2" 

    echo -e "\n\tPROCESOS"
    echo -e "\t11. Procesos 1"
    echo -e "\t12. Procesos 2"
    echo -e "\t13. Procesos 3"

    echo -e "\n\tDEBIAN"
    echo -e "\t14. Debian 1"
    echo -e "\t15. Debian 2"
    
    echo -e "\n\tKERNEL"
    echo -e "\t16. Kernel 1"
    echo -e "\t17. Kernel 2"
    
    echo -e "\n\tCOMPRESION"
    echo -e "\t18. Compresion 1"

    echo -e "\n\tHERRAMIENTAS EXTRAS"
    echo -e "\t19. Herramientas Extras 1"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_avanzado() {
	
	while [ 1 ]
	do

		get_menu_avanzado

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			
			1)	feh "./imagen/03_avanzado/01_expresiones_busqueda/011_busqueda_archivos_expresiones.jpg";;							
			2)	feh "./imagen/03_avanzado/01_expresiones_busqueda/012_busqueda_archivos_expresiones.jpg";;				
			3)	feh "./imagen/03_avanzado/02_administracion/021_usuarios.jpg";;			
			4)	feh "./imagen/03_avanzado/02_administracion/022_usuarios.jpg";;				
			5)	feh "./imagen/03_avanzado/02_administracion/023_usuarios_permisos.jpg";;				
			6)	feh "./imagen/03_avanzado/02_administracion/024_particiones.jpg";;			
			7)	feh "./imagen/03_avanzado/02_administracion/025_hardware.jpg";;			
			8)	feh "./imagen/03_avanzado/02_administracion/026_software_tamanio.jpg";;			
			9)	feh "./imagen/03_avanzado/03_networking/031_networking.jpg";;	
            10)	feh "./imagen/03_avanzado/03_networking/032_networking.jpg";;			
			11)	feh "./imagen/03_avanzado/04_procesos/041_procesos.jpg";;			
			12)	feh "./imagen/03_avanzado/04_procesos/042_procesos.jpg";;
            13)	feh "./imagen/03_avanzado/04_procesos/043_procesos.jpg";;							
			14)	feh "./imagen/03_avanzado/06_debian/061_debian.jpg";;				
			15)	feh "./imagen/03_avanzado/06_debian/062_debian.jpg";;			
			16)	feh "./imagen/03_avanzado/08_kernel/081_kernel.jpg";;				
			17)	feh "./imagen/03_avanzado/08_kernel/082_kernel.jpg";;				
			18)	feh "./imagen/03_avanzado/07_compresion.jpg";;			
			19)	feh "./imagen/03_avanzado/05_herramientas_extras/051_herramientas_extras.jpg";;			
			
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
	#read -n 1 linea

	done
}

#-----------MENU TIPS----------------

get_menu_tips() {
    clear
    echo
    echo -e "\t\t\tMENU TIPS LINUX\n"

    echo -e "\n\tSISTEMA"
    echo -e "\t\t 1. General"
    echo -e "\t\t 2. Sistema"
    echo -e "\t\t 3. Proceso"
    echo -e "\t\t 4. Archivos"
    echo -e "\t\t 5. Logs"
    echo -e "\t\t 6. Documentacion"

    echo -e "\n\tSEGURIDAD"
    echo -e "\t\t 11. Usuarios"
    echo -e "\t\t 12. Usuarios Grupo"

    echo -e "\n\tCOMANDOS"
    echo -e "\t\t 21. Terminal"
    echo -e "\t\t 22. Pipes"
    echo -e "\t\t 23. Regex"
    echo -e "\t\t 24. Comandos"
       
    echo -e "\n\tNETWORKING"
    echo -e "\t\t 31. Redes"

    echo -e "\n\tHARDWARE"
    echo -e "\t\t 41. Discos"
	
    echo -e "\n\tSOFTWARE"   
    echo -e "\t\t 51. Repositorios"
    echo -e "\t\t 52. Instalacion"
    echo -e "\t\t 53. Kernel"

    echo -e "\t\n0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_tips() {
	
	while [ 1 ]
	do

		get_menu_tips

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;

			1)	feh "./imagen/04_tip/01_tip_general.jpg";;							
			2)	feh "./imagen/04_tip/02_tip_sistema.jpg";;				
			3)	feh "./imagen/04_tip/03_tip_proceso.jpg";;			
			4)	feh "./imagen/04_tip/05_tip_archivos.jpg";;				
			5)	feh "./imagen/04_tip/12_tip_logs.jpg";;				
			6)	feh "./imagen/04_tip/11_tip_documentacion.jpg";;			
			11)	feh "./imagen/04_tip/06_tip_usuarios.jpg";;			
			12)	feh "./imagen/04_tip/07_tip_usuario_grupo.jpg";;			
			21)	feh "./imagen/04_tip/04_tip_terminal.jpg";;
			22)	feh "./imagen/04_tip/08_tip_pipes.jpg";;							
			23)	feh "./imagen/04_tip/09_tip_regex.jpg";;				
			24)	feh "./imagen/04_tip/10_tip_comandos.jpg";;			
			31)	feh "./imagen/04_tip/14_tip_redes.jpg";;				
			41)	feh "./imagen/04_tip/13_tip_discos.jpg";;				
			51)	feh "./imagen/04_tip/15_tip_repositorios.jpg";;			
			52)	feh "./imagen/04_tip/16_tip_instalacion.jpg";;			
			53)	feh "./imagen/04_tip/17_tip_kernel.jpg";;							
			
			*)  echo -e "Seleccion Incorrecta";;
		esac

	#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
	#read -n 1 linea

	done
}

#-----------MENU EJEMPLOS----------------

get_menu_ejemplos() {
    clear
    echo
    echo -e "\t\t\tMENU EJEMPLOS LINUX\n"

    echo -e "\t1. Basico"
    echo -e "\t2. Tips"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_ejemplo_general () {
    less $1
}

get_procesar_menu_ejemplos() {
	
	while [ 1 ]
	do

		get_menu_ejemplos

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				

			1)	get_ejemplo_general "./ejemplo/01_basico/03_basico_ls.txt" ;;				
			2)	get_ejemplo_general "./ejemplo/01_basico/03_basico_ls.txt" ;;				
			3)	get_ejemplo_general "./ejemplo/01_basico/03_basico_ls.txt" ;;										
			*)  echo -e "Seleccion Incorrecta" ;;

		esac

	echo -e "\n\n\t\t\tTeclee cualquier tecla para continuar"
	read -n 1 linea

	done
}


while [ 1 ]
do

    get_menu_principal

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;           

        1)	get_procesar_menu_basico ;;            
        2)	get_procesar_menu_intermedio ;;        
        3)	get_procesar_menu_avanzado ;;
		4)	get_procesar_menu_tips ;;
		5)	get_procesar_menu_ejemplos ;;

        *)	echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done