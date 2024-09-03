#!/bin/bash

opcion=0
linea=""

#apt-cache show gedit

#-------------------------MENU PRINCIPAL-----------------------------------

get_menu_principal() {
    clear
    echo
    echo -e "\t\t\tLINUX MINT APLICACIONES\n"

    echo -e "\t1. Basico"
    echo -e "\t2. Sistema"
    echo -e "\t3. Red"
    echo -e "\t4. Oficina"
    echo -e "\t5. Internet"
    echo -e "\t6. Utilitarios"
    echo -e "\t7. Graficos"
    echo -e "\t8. Audio"
    echo -e "\t9. Video"
    echo -e "\t10. Desarrollo"
    echo -e "\t11. Educacion"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

#--------------------------MENU BASICO--------------------------------------------

get_menu_basico() {
    clear
    echo
    echo -e "\t\t\tMENU BASICO APLICACIONES LINUX MINT\n"

    echo -e "\n\tAPLICACIONES"
    echo -e "\t1. Instalar Neofetch (neofetch)"
    echo -e "\t2. Instalar Terminal (rxvt-unicode) --> (7MB)"	
    echo -e "\t3. Instalar Graficos (feh)"
    echo -e "\t4. Linux Text Editor con (vim)"
    echo -e "\t5. Linux Text Editor Grafico (gvim)"
    echo -e "\t6. Linux Text Editor con Nano (nano)"

    echo -e "\n\tSERVICIOS"
    echo -e "\t21. Instalar OpenSsh (openssh)"
    echo -e "\t22. Compartir Archivos con samba (samba)"
    echo -e "\t23. Compartir Escritorio Remoto con Vino (vino)"
   

    echo -e "\n\tUTILITARIOS"
    echo -e "\t31. Windows Manager i3 (i3)"
    echo -e "\t32. Windows Manager Open Box (openbox)"

    echo -e "\n\tAMBIENTE"
    echo -e "\t41. Java OpenJdk 11 (jdk11-openjdk)"

    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
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
			1)
	            exec_instalar_neofetch ;;
            2)
                exec_instalar_terminal;;          
	        3)
                exec_instalar_feh;;			
            4)
                exec_instalar_vim;;
            5)
                exec_instalar_gvim;;
            6)
                exec_instalar_nano;;
            21)
                exec_instalar_openssh;;
            22)
                exec_instalar_samba;;
            23)
                exec_instalar_vino;;            
            31)
                exec_instalar_i3;;
            32)
                exec_instalar_openbox;;
	    41)
                exec_instalar_openjdk11;;
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------------------------MENU SISTEMA--------------------------------------

get_menu_sistema() {
    clear
    echo
    echo -e "\t\t\tMENU SISTEMA APLICACIONES LINUX MINT\n"

    echo -e "\t1. Instalar Gparted (gparted)"
    echo -e "\t2. Instalar Regedit (gconf-editor)"
    echo -e "\t3. Instalar Antivirus (clamtk)"
    echo -e "\t4. Instalar Virtualizacion (virtualbox)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_sistema() {
	
	while [ 1 ]
	do

		get_menu_sistema

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_gparted ;;
            2)
                exec_instalar_regedit;;          
            3)
                exec_instalar_antivirus;;
	        4)
                exec_instalar_virtualbox;;			
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------------------------MENU RED-------------------------------------

get_menu_red() {
    clear
    echo
    echo -e "\t\t\tMENU RED APLICACIONES LINUX MINT\n"

    echo -e "\n\tESCRITORIO REMOTO"
    echo -e "\t1. Cliente Escritorio Remoto (remmina)"    
    echo -e "\t2. Cliente Escritorio Remoto (vinagre)"    
    echo -e "\t3. Cliente Escritorio Remoto (teamviewer)"
    echo -e "\t4. Cliente Escritorio Remoto (vncviewer)"

    echo -e "\n\tCOMUNICACION"
    echo -e "\t6. Audio Comunicacion (mumble)"


    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_red() {
	
	while [ 1 ]
	do

		get_menu_red

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_remmina ;;            	
            2)
	            exec_instalar_vinagre ;;
            3)
	            exec_instalar_teamviewer ;;
            4)
	            exec_instalar_vncviewer ;;

            6)
	            exec_instalar_mumble ;;
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#--------------------------------MENU OFICINA-----------------------------------

get_menu_oficina() {
    clear
    echo
    echo -e "\t\t\tMENU OFICINA APLICACIONES LINUX MINT\n"

    echo -e "\n\tDIAGRAMAS"
    echo -e "\t1. Mapas Mentales (freeplane)"
    echo -e "\t2. Diagrama con Dia (dia)"
    echo -e "\t3. Diagrama con CMapTools(CMapTools) --> (MANUAL)"
    
    echo -e "\n\tCALENDARIO"
    echo -e "\t6. Calendario (gnome-calendar)"
    echo -e "\t7. Organizador (korganizer)"
    
    echo -e "\n\tPLANIFICACION"
    echo -e "\t11. Planificador (planner)"

    echo -e "\n\tCHM"
    echo -e "\t16. Visor de Chm (kchmviewer)"

    echo -e "\n\tPDF"
    echo -e "\t21. Pdf Shuffler (pdfshuffler)"
    echo -e "\t22. Pdf Viewer (xreader)"

    echo -e "\n\tCD/DVD"
    echo -e "\t26. Copiador CD/DVD (brasero)"
    echo -e "\t27. Quemador CD/DVD (k3b)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_oficina() {
	
	while [ 1 ]
	do

		get_menu_oficina

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_freeplane ;;            	
            2)
	            exec_instalar_dia ;; 
            3)
	            exec_instalar_cmaptools ;; 
            6)
	            exec_instalar_gnome_calendar ;;            	
            7)
	            exec_instalar_korganizer ;; 
            11)
	            exec_instalar_planner ;; 
            16)
	            exec_instalar_kchmviewer ;;            	
            21)
	            exec_instalar_pdfshuffler ;; 
	    22)
	            exec_instalar_xreader ;;
            26)
	            exec_instalar_brasero ;;
            27)
	            exec_instalar_k3b ;;  
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#---------------------------------MENU INTERNET---------------------------------

get_menu_internet() {
    clear
    echo
    echo -e "\t\t\tMENU INTERNET APLICACIONES LINUX MINT\n"
    
    echo -e "\n\tNAVEGADOR WEB"
    echo -e "\t1. Navegador Chromium (chromium)"
    echo -e "\t2. Navegador Chrome (google-chrome-stable)"
    echo -e "\t3. Navegador Opera (opera)"
    
    echo -e "\n\tARCHIVOS"
    echo -e "\t6. Cliente Ftp (filezilla)"

    echo -e "\n\tDESCARGA"
    echo -e "\t11. Descarga con Curl (curl)"
    echo -e "\t12. Descarga con Uget (uget)"

    echo -e "\n\tTORRENT"
    echo -e "\t16. Descarga con Deluge (deluge)"
    echo -e "\t17. Descarga con Transmission (transmission)"

    echo -e "\n\tCHAT"
    echo -e "\t21. Chat con HexChat (hexchat)"
    
    echo -e "\n\tREDES SOCIALES"
    echo -e "\t26. Twitter con CoreBird (corebird)"

    echo -e "\n\tRSS"
    echo -e "\t31. RSS con Liferea (liferea)"

    echo -e "\n\tPODCAST"
    echo -e "\t36. Podcast con Clementine (clementine)"
    echo -e "\t37. Podcast con Gpodder (gpodder)"

    echo -e "\n\tMAIL"
    echo -e "\t41. Mail con Thunderbird (thunderbird)"

    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_internet() {
	
	while [ 1 ]
	do

		get_menu_internet

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_chromium ;;            	
            2)
	            exec_instalar_chrome ;;
            3)
	            exec_instalar_opera ;;
            6)
	            exec_instalar_filezilla ;;
            11)
	            exec_instalar_curl ;;
            12)
	            exec_instalar_uget ;;
            16)
	            exec_instalar_deluge ;;
            17)
	            exec_instalar_transmission ;;
            21)
	            exec_instalar_hexchat ;;
            26)
	            exec_instalar_corebird ;;
            31)
	            exec_instalar_liferea ;;
            36)
	            exec_instalar_clementine ;;
            37)
	            exec_instalar_gpodder ;;
            41)
	            exec_instalar_thunderbird ;;            
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#----------------------------- MENU UTILITARIOS -------------------------------------

get_menu_utilitarios() {
    clear
    echo
    echo -e "\t\t\tMENU UTILITARIOS APLICACIONES LINUX MINT\n"

    echo -e "\t1. Cronometro con Gnome-Clocks (gnome-clocks)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_utilitarios() {
	
	while [ 1 ]
	do

		get_menu_utilitarios

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_gnome_clocks ;;            	
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#----------------------------- MENU GRAFICOS -------------------------------------

get_menu_graficos() {
    clear
    echo
    echo -e "\t\t\tMENU GRAFICOS APLICACIONES LINUX MINT\n"

    echo -e "\t1. Instalar Editor Grafico con Gimp (gimp)"
    echo -e "\t2. Capturador de Pantalla (shutter)"
    echo -e "\t3. Mapas con Gnome Maps (gnome-maps)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_graficos() {
	
	while [ 1 ]
	do

		get_menu_graficos

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_gimp ;;            	
            2)
	            exec_instalar_shutter ;;
            3)
	            exec_instalar_gnome_maps ;;
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------------------------MENU AUDIO-------------------------------------

get_menu_audio() {
    clear
    echo
    echo -e "\t\t\tMENU AUDIO APLICACIONES LINUX MINT\n"

    echo -e "\t1. Reproductor de Audio (audacious)"
    echo -e "\t2. Editor de Audio (audacity)"
    echo -e "\t3. Lector de Texto (gespeaker)"
    echo -e "\t4. Grabador de CD a MP3 (asunder)"
    echo -e "\t5. Ripper de DVD (handbrake)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_audio() {
	
	while [ 1 ]
	do

		get_menu_audio

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_audacious ;;            	
            2)
	            exec_instalar_audacity ;;  
            3)
	            exec_instalar_gespeaker ;;            	
            4)
	            exec_instalar_asunder ;;  
		    5)
	            exec_instalar_handbrake ;;  
            
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#----------------------------- MENU VIDEO -------------------------------------

get_menu_video() {
    clear
    echo
    echo -e "\t\t\tMENU VIDEO APLICACIONES LINUX MINT\n"
    
    echo -e "\n\tGRABACION"
    echo -e "\t1.Grabacion de Videos con Voko Screen (vokoscreen)"
    echo -e "\t2.Grabacion de Videos con Kazam (kazam)"

    echo -e "\n\tEDICION"
    echo -e "\t6.Edicion de Videos con Open Shot (openshot)"
    echo -e "\t7.Edicion de Videos con Kden Live (kdenlive)"

    echo -e "\n\tGIF"
    echo -e "\t11.Grabacion de Gifs con Peek (peek)"

    echo -e "\n\tWEB CAM"
    echo -e "\t16. Web Cam con Cheese (cheese)"

    echo -e "\n\tMOVIES"
    echo -e "\t21. Ver Peliculas con Mpv (mpv)"

    

    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_video() {
	
	while [ 1 ]
	do

		get_menu_video

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_vokoscreen ;;            	
            2)
	            exec_instalar_kazam ;;  
            6)
	            exec_instalar_openshot ;;            	
            7)
	            exec_instalar_kdenlive ;; 
            11)
	            exec_instalar_peek ;;            	
            16)
	            exec_instalar_cheese ;;  
            21)
	            exec_instalar_mpv ;;  
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------------------------MENU DESARROLLO-------------------------------------

get_menu_desarrollo() {
    clear
    echo
    echo -e "\t\t\tMENU DESARROLLO APLICACIONES LINUX MINT\n"
    
    echo -e "\n\tLENGUAJES DE PROGRAMACION"
    echo -e "\t1. IDE Programacion Interpretado (sublime-text)"
    echo -e "\t2. IDE Programacion Pseudo Codigo (Pseint) --> (MANUAL)"
    echo -e "\t3. IDE Programacion Movil Android Studio --> (FLATPACK)"
    echo -e "\t4. TESTER Soap UI Open source --> (MANUAL)"
    echo -e "\t5. IDE Programacion Qt (qtcreator)"
    echo -e "\t6. IDE Programacion Arduino (arduino)"	
    
    echo -e "\t11. Lenguaje de Programacion Php (php)"


    echo -e "\n\tBASE DE DATOS"
    echo -e "\t21. SQL Lite (sqlite,sqlitebrowser)"
    echo -e "\t22. DBeaver Community --> (FLATPACK)"
    echo -e "\t23. Maria Db y Mysql Browser (mariadb-server,mysql-workbench)"


    echo -e "\n\tVIRTUALIZACION"
    echo -e "\t41. Virtualizacion Móvil (Genymotion) --> (MANUAL)"


    echo -e "\n\tWEB"
    echo -e "\t51. Servidor Web con Apache (apache2)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_desarrollo() {
	
	while [ 1 ]
	do

		get_menu_desarrollo

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_sublime_text ;;            	
            2)
	            exec_instalar_pseint ;;
            3)
	            exec_instalar_android_studio ;;
            4)
	            exec_instalar_soapui ;;
            5)
	            exec_instalar_qtcreator ;;
	    6)
	            exec_instalar_arduino ;;
            11)
                    exec_instalar_php;;
            21)
	            exec_instalar_sqlite ;;
            22)
	            exec_instalar_dbeaver ;;
            23)
	            exec_instalar_mysql ;;
            41)
	            exec_instalar_genymotion ;;
            51)
                exec_instalar_apache;;						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------------------------MENU EDUCACION-------------------------------------

get_menu_educacion() {
    clear
    echo
    echo -e "\t\t\tMENU EDUCACION APLICACIONES LINUX MINT\n"

    echo -e "\t1. Programacion para Ninos (scratch)"
    echo -e "\t2. Programacion para Musica (sonic-pi)"

    echo -e "\n\tARCHIVOS"
    #echo -e "\t\t 5. Archivos 1"
    #echo -e "\t\t 6. Archivos 2"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_procesar_menu_educacion() {
	
	while [ 1 ]
	do

		get_menu_educacion

		case $opcion in
			0)
				clear;
				#echo -e "Proceso terminado correctamente..."
				break ;;				
			1)
	            exec_instalar_scratch ;;            	
            2)
	            exec_instalar_sonic_pi ;;
           						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#----------------------------------- MENU BASICO---------------------------------

exec_instalar_neofetch() {
    echo -e "------------------1.- Instalar Neofetch (neofetch) --> (7MB)---------------------------"
    sudo pacman -S neofetch
    echo -e "------------------------ TESTING -----------------------"
    neofetch
}

exec_instalar_terminal() {
    echo -e "------------------2.- Instalar Terminal (rxvt-unicode) --> (7MB) ---------------------------"
    sudo pacman -S rxvt-unicode
    echo -e "------------------------ TESTING -----------------------"
    man rxvt-unicode
}

exec_instalar_feh() {
    echo -e "------------------3.- Instalar Graficos (feh) ---------------------------"
    sudo pacman -S feh
    echo -e "------------------------ TESTING -----------------------"
    feh -v
}

exec_instalar_vim() {
    echo -e "------------------4. Linux Text Editor (vim) ---------------------------"
    sudo pacman -S vim  
    echo -e "------------------------ TESTING -----------------------"
    vim --version
}

exec_instalar_gvim() {
    echo -e "------------------5. Linux Text Editor Grafico (gvim) ---------------------------"
    sudo pacman -S gvim  
    echo -e "------------------------ TESTING -----------------------"
    man gvim
}

exec_instalar_nano() {
    echo -e "------------------6. Linux Text Editor con Nano (nano) ---------------------------"
    sudo pacman -S nano  
    echo -e "------------------------ TESTING -----------------------"
    nano --version
}

exec_instalar_openssh() {
    echo -e "------------------21.- Instalar OpenSsh (openssh)------------------"
    sudo pacman -S openssh-server

    systemctl enable ssh
    
    #ps aux | grep sshd
    echo -e "------------------------ TESTING -----------------------"
    man ssh
}

exec_instalar_samba() {
    echo -e "------------------22. Compartir Archivos con samba (samba)------------------"
    sudo pacman -S samba system-config-samba
    
    sudo touch /etc/libuser.conf

    sudo system-config-samba
    echo -e "------------------------ TESTING -----------------------"
    ps aux | grep sshd
    samba --version
}

exec_instalar_vino() {
    echo -e "------------------23. Compartir Escritorio Remoto con Vino (vino)------------------"
    sudo pacman -S vino
    
    # REGEDIT CAMBIOS
    gsettings set org.gnome.Vino require-encryption false
    gsettings set org.gnome.Vino prompt-enabled false
    gsettings set org.gnome.Vino authentication-methods "['none']"
    echo -e "------------------------ TESTING -----------------------"  
    dpkg -l |  egrep -i 'vnc|vino'
    
    #/usr/lib/vino/vino-server 
    #ps aux | grep vino
}

exec_instalar_i3() {
    echo -e "------------------31. Windows Manager i3 (i3)------------------"
    sudo pacman -S i3-wm i3lock i3status dmenu
    echo -e "------------------------ TESTING -----------------------"
    i3 -v
}

exec_instalar_openbox() {
    echo -e "------------------32. Windows Manager Open Box (openbox)------------------"
    sudo pacman -S openbox tint2
    echo -e "------------------------ TESTING -----------------------"
    openbox --version
}

exec_instalar_openjdk11() {
    echo -e "------------------41. Java OpenJdk 11 (jdk11-openjdk)------------------"
    sudo pacman -S jdk11-openjdk
    echo -e "------------------------ TESTING -----------------------"
    java -version
}

#--------------------------------------- MENU SISTEMA------------------------------------

exec_instalar_gparted() {
    echo -e "------------------1.- Instalar Editor de Particiones (gparted) ---------------------------"
    sudo pacman -S gparted   
    echo -e "------------------------ TESTING -----------------------"
    man gparted
}

exec_instalar_regedit() {
    echo -e "------------------2.- Instalar Regedit (dconf-editor) ---------------------------"
    sudo pacman -S dconf-editor  
    echo -e "------------------------ TESTING -----------------------"
    dconf-editor -v
}

exec_instalar_antivirus() {
    echo -e "------------------3.- Instalar Antivirus (clamtk) ---------------------------"
    sudo pacman -S clamtk   
    echo -e "------------------------ TESTING -----------------------"
    man clamtk
}

exec_instalar_virtualbox() {
    echo -e "------------------4.- Instalar Virtual Box (virtualbox) ---------------------------"
    sudo pacman -S virtualbox  
    echo -e "------------------------ TESTING -----------------------"
    man virtualbox
}


#----------------------------------- MENU RED---------------------------------

exec_instalar_remmina() {
    echo -e "------------------1.- Instalar Remmina (remmina) ---------------------------"
    sudo pacman -S remmina
    
    #Pluggins
    sudo pacman -S remmina-plugin-vnc
    sudo pacman -S remmina-plugin-xdmcp
    sudo pacman -S remmina-plugin-rdp
    echo -e "------------------------ TESTING -----------------------"
    remmina -v
}

exec_instalar_vinagre() {
    echo -e "------------------2. Cliente Escritorio Remoto (vinagre) ---------------------------"
    sudo pacman -S vinagre
    echo -e "------------------------ TESTING -----------------------"
    man vinagre
}

exec_instalar_teamviewer() {
    echo -e "------------------3. Cliente Escritorio Remoto (teamviewer) ---------------------------"
    sudo pacman -S teamviewer
}

exec_instalar_vncviewer() {
    echo -e "------------------4. Cliente Escritorio Remoto (vncviewer) ---------------------------"
    echo -e "Instalacion MANUAL (https://www.realvnc.com/es/connect/download/viewer/)"
}

exec_instalar_mumble() {
    echo -e "------------------6. Audio Comunicacion (mumble) ---------------------------"
    sudo pacman -S mumble
    echo -e "------------------------ TESTING -----------------------"
    man mumble
}

#----------------------------------- MENU OFICINA---------------------------------

exec_instalar_freeplane() {
    echo -e "------------------1. Mapas Mentales (freeplane) ---------------------------"
    sudo pacman -S freeplane
    echo -e "------------------------ TESTING -----------------------"
    man freeplane
}

exec_instalar_dia() {
    echo -e "------------------2. Diagrama con Dia (dia) ---------------------------"
    sudo pacman -S dia
    echo -e "------------------------ TESTING -----------------------"
    man dia
}

exec_instalar_cmaptools() {
    echo -e "------------------3. Diagrama con CMapTools(CMapTools) --> (MANUAL) ---------------------------"
    echo -e "Instalacion MANUAL (https://cmap.ihmc.us/cmaptools/cmaptools-download/)"
}

exec_instalar_gnome_calendar() {
    echo -e "------------------6. Calendario (gnome-calendar) ---------------------------"
    sudo pacman -S gnome-calendar
    echo -e "------------------------ TESTING -----------------------"
    gnome-calendar -v
}

exec_instalar_korganizer() {
    echo -e "------------------7. Organizador (korganizer) ---------------------------"
    sudo pacman -S korganizer
    echo -e "------------------------ TESTING -----------------------"
    korganizer -v
}

exec_instalar_planner() {
    echo -e "------------------11. Planificador (planner) ---------------------------"
    sudo pacman -S planner
    echo -e "------------------------ TESTING -----------------------"
    planner -v
}

exec_instalar_kchmviewer() {
    echo -e "------------------16. Visor de Chm (kchmviewer) ---------------------------"
    sudo pacman -S kchmviewer
    echo -e "------------------------ TESTING -----------------------"
    kchmviewer -v
}

exec_instalar_pdfshuffler() {
    echo -e "------------------21. Pdf Shuffler (pdfshuffler) ---------------------------"
    sudo pacman -S pdfshuffler
    echo -e "------------------------ TESTING -----------------------"
    man pdfshuffler
}

exec_instalar_xreader() {
    echo -e "------------------ 22. Pdf Viewer (xreader) ---------------------------"
    sudo pacman -S xreader
    echo -e "------------------------ TESTING -----------------------"
    xreader --version
}

exec_instalar_brasero() {
    echo -e "------------------26. Copiador CD/DVD (brasero) ---------------------------"
    sudo pacman -S brasero
    echo -e "------------------------ TESTING -----------------------"
    man brasero
}

exec_instalar_k3b() {
    echo -e "------------------27. Quemador CD/DVD (k3b) ---------------------------"
    sudo pacman -S k3b
    echo -e "------------------------ TESTING -----------------------"
    k3b -v
}


#----------------------------------- MENU INTERNET---------------------------------

exec_instalar_chromium() {
    echo -e "------------------1.- Instalar Navegador Chromium (chromium)----------------------"
    sudo pacman -S chromium
    echo -e "------------------------ TESTING -----------------------"
    chromium-browser --version
}

exec_instalar_chrome() {
    echo -e "------------------2.- Instalar Navegador Chrome (google-chrome-stable)----------------------"
    sudo pacman -S google-chrome-stable
    echo -e "------------------------ TESTING -----------------------"
    google-chrome-stable -v
}

exec_instalar_opera() {
    echo -e "------------------3.- Instalar Navegador Opera (opera)----------------------"
    sudo pacman -S opera
    echo -e "------------------------ TESTING -----------------------"
    opera -v
}

exec_instalar_filezilla () {
    echo -e "------------------6. Cliente Ftp (filezilla)----------------------"
    sudo pacman -S filezilla
    echo -e "------------------------ TESTING -----------------------"
    filezilla -v
}

exec_instalar_curl () {
    echo -e "------------------11. Descarga con Curl (curl)----------------------"
    sudo pacman -S curl
    echo -e "------------------------ TESTING -----------------------"
    curl --version
}

exec_instalar_uget () {
    echo -e "------------------12. Descarga con Uget (uget)----------------------"
    sudo pacman -S uget
    echo -e "------------------------ TESTING -----------------------"
    man uget
}

exec_instalar_deluge () {
    echo -e "------------------16. Descarga con Deluge (deluge)----------------------"
    sudo pacman -S deluge
    echo -e "------------------------ TESTING -----------------------"
    deluge -v
}

exec_instalar_transmission () {
    echo -e "------------------17. Descarga con Transmission (transmission)----------------------"
    sudo pacman -S transmission
    echo -e "------------------------ TESTING -----------------------"
    transmission -v
}

exec_instalar_hexchat () {
    echo -e "------------------21. Chat con HexChat (hexchat)----------------------"
    sudo pacman -S hexchat
    echo -e "------------------------ TESTING -----------------------"
    hexchat -v
}

exec_instalar_corebird () {
    echo -e "------------------26. Twitter con CoreBird (corebird)----------------------"
    sudo pacman -S corebird
    echo -e "------------------------ TESTING -----------------------"
    man corebird
}

exec_instalar_liferea () {
    echo -e "------------------31. RSS con Liferea (liferea)----------------------"
    sudo pacman -S liferea
    echo -e "------------------------ TESTING -----------------------"
    liferea -v
}

exec_instalar_clementine () {
    echo -e "------------------36. Podcast con Clementine (clementine)----------------------"
    sudo pacman -S clementine
    echo -e "------------------------ TESTING -----------------------"
    clementine --version
}

exec_instalar_gpodder () {
    echo -e "------------------37. Podcast con Gpodder (gpodder)----------------------"
    sudo pacman -S gpodder
    echo -e "------------------------ TESTING -----------------------"
    gpodder --version
}

exec_instalar_thunderbird () {
    echo -e "------------------41. Mail con Thunderbird (thunderbird)----------------------"
    sudo pacman -S thunderbird
    echo -e "------------------------ TESTING -----------------------"
    thunderbird -v
}

#----------------------------------- MENU UTILITARIOS ---------------------------------

exec_instalar_gnome_clocks() {
    echo -e "------------------1. Cronometro con Gnome-Clocks (gnome-clocks)----------------------"
    sudo pacman -S gnome-clocks
    echo -e "------------------------ TESTING -----------------------"
    gnome-clocks -v
}

#----------------------------------- MENU GRAFICOS ---------------------------------

exec_instalar_gimp() {
    echo -e "------------------1. Instalar Editor Grafico con Gimp (gimp)----------------------"
    sudo pacman -S gimp
    echo -e "------------------------ TESTING -----------------------"
    gimp --version
}

exec_instalar_shutter() {
    echo -e "------------------2. Capturador de Pantalla (shutter)----------------------"
    sudo pacman -S shutter
    echo -e "------------------------ TESTING -----------------------"
    man shutter
}

exec_instalar_gnome_maps() {
    echo -e "------------------3. Mapas con Gnome Maps (gnome-maps)----------------------"
    sudo pacman -S gnome-maps
    echo -e "------------------------ TESTING -----------------------"
    gnome-maps -v
}

#----------------------------------- MENU AUDIO ---------------------------------

exec_instalar_audacious() {
    echo -e "------------------1. Reproductor de Audio (audacious)----------------------"
    sudo pacman -S audacious
    echo -e "------------------------ TESTING -----------------------"
    audacious -v
}

exec_instalar_audacity() {
    echo -e "------------------2. Editor de Audio (audacity)----------------------"
    sudo pacman -S audacity
    echo -e "------------------------ TESTING -----------------------"
    man audacity
}

exec_instalar_gespeaker() {
    echo -e "------------------3. Lector de Texto (gespeaker)----------------------"
    sudo pacman -S gespeaker
    echo -e "------------------------ TESTING -----------------------"
    man gespeaker
}

exec_instalar_asunder() {
    echo -e "------------------4. Grabador de CD a MP3 (asunder)----------------------"
    sudo pacman -S asunder
    echo -e "------------------------ TESTING -----------------------"    
    man asunder
}

exec_instalar_handbrake() {
    echo -e "------------------5. Ripper de DVD (handbrake)----------------------"
    sudo pacman -S handbrake
    echo -e "------------------------ TESTING -----------------------"
    man handbrake
}


#----------------------------------- MENU VIDEO ---------------------------------

exec_instalar_vokoscreen() {
    echo -e "------------------1.Grabacion de Videos con Voko Screen (vokoscreen)----------------------"
    sudo pacman -S vokoscreen
    echo -e "------------------------ TESTING -----------------------"
    man vokoscreen
}

exec_instalar_kazam() {
    echo -e "------------------2.Grabacion de Videos con Kazam (kazam)----------------------"
    sudo pacman -S kazam
    echo -e "------------------------ TESTING -----------------------"
    kazam -v
}

exec_instalar_openshot() {
    echo -e "------------------6.Edicion de Videos con Open Shot (openshot)----------------------"
    sudo pacman -S openshot
    echo -e "------------------------ TESTING -----------------------"
    openshot -v
}

exec_instalar_kdenlive() {
    echo -e "------------------7.Edicion de Videos con Kden Live (kdenlive)----------------------"
    sudo pacman -S kdenlive
    echo -e "------------------------ TESTING -----------------------"
    kdenlive -v
}

exec_instalar_peek() {
    echo -e "------------------11.Grabacion de Gifs con Peek (peek)----------------------"
    sudo pacman -S peeks
    echo -e "------------------------ TESTING -----------------------"  
    peeks -v
}

exec_instalar_cheese() {
    echo -e "------------------16. Web Cam con Cheese (cheese)----------------------"
    sudo pacman -S cheese
    echo -e "------------------------ TESTING -----------------------"
    cheese -v
}

exec_instalar_mpv() {
    echo -e "------------------21. Ver Peliculas con Mpv (mpv)----------------------"
    sudo pacman -S mpv
    echo -e "------------------------ TESTING -----------------------"
    mpv --version
}

#----------------------------------- MENU DESARROLLO ---------------------------------

exec_instalar_sublime_text() {
    echo -e "------------------1. IDE Programacion Interpretado (sublime-text)----------------------"
    sudo pacman -S sublime-text
    echo -e "------------------------ TESTING -----------------------"
    /opt/sublime_text/sublime_text -v
}

exec_instalar_pseint() {
    echo -e "------------------2. IDE Programacion Pseudo Codigo (Pseint) --> (MANUAL)----------------------"
    echo -e "Instalacion MANUAL (http://pseint.sourceforge.net/index.php?page=descargas.php&os=lnx)"
}

exec_instalar_android_studio() {
    echo -e "------------------3. IDE Programacion Movil Android Studio --> (FLATPACK)----------------------"
    echo -e "Instalacion MANUAL (https://developer.android.com/studio)"
}

exec_instalar_soapui() {
    echo -e "------------------4. TESTER Soap UI Open source --> (MANUAL)----------------------"
    echo -e "Instalacion MANUAL (https://www.soapui.org/downloads/soapui/)"
}

exec_instalar_qtcreator() {
    echo -e "------------------5. IDE Programacion Qt (qtcreator)----------------------"
    sudo pacman -S qtcreator
    echo -e "------------------------ TESTING -----------------------"
    qtcreator -v
}

exec_instalar_arduino() {
    echo -e "------------------6. IDE Programacion Arduino (arduino)----------------------"
    sudo pacman -S arduino
    echo -e "------------------------ TESTING -----------------------"
    arduino
}

exec_instalar_php() {
    echo -e "------------------11. Lenguaje de Programacion Php (php)----------------------"
    sudo pacman -S php php-common
    sudo pacman -S php-xml php-json php-gd php-mbstring php-bcmath php-zip
    sudo pacman -S php-mysqlnd php-xdebug 
    echo -e "------------------------ TESTING -----------------------"
    php -v
}

exec_instalar_sqlite() {
    echo -e "------------------21. SQL Lite (sqlite,sqlitebrowser)----------------------"
    sudo pacman -S sqlite sqlitebrowser
    echo -e "------------------------ TESTING -----------------------"
    sqlitebrowser --version
}

exec_instalar_dbeaver() {
    echo -e "------------------22. DBeaver Community --> (FLATPACK)----------------------"
    echo -e "Instalacion MANUAL  --> (FLATPACK)"
}

exec_instalar_mysql() {
    echo -e "--------------23. Maria Db y Mysql Browser (mariadb-server,mysql-workbench)----------------"
    sudo pacman -S mariadb-server mysql-workbench
    
    sudo systemctl disable mariadb.service
    
    sudo mysql_secure_installation

    #sudo systemctl start mariadb.service
    echo -e "------------------------ TESTING -----------------------"
    mariadb-server -v
}

exec_instalar_genymotion() {
    echo -e "------------------41. Virtualizacion Móvil (Genymotion) --> (MANUAL)----------------------"
    echo -e "Instalacion MANUAL (https://www.genymotion.com/download/)"
}

exec_instalar_apache() {
    echo -e "------------------51. Servidor Web con Apache (apache2)----------------------"
    sudo pacman -S apache2
    sudo pacman -S phpmyadmin

    sudo systemctl disable apache2.service
    
    # sudo systemctl start apache2.service
    echo -e "------------------------ TESTING -----------------------"
    apache2 -v
}

#----------------------------------- MENU EDUCACION ---------------------------------

exec_instalar_scratch() {
    echo -e "------------------1. Programacion para Ninos (scratch)----------------------"
    sudo pacman -S scratch
    echo -e "------------------------ TESTING -----------------------"
    man scratch
}

exec_instalar_sonic_pi() {
    echo -e "------------------2. Programacion para Musica (sonic-pi)----------------------"
    sudo pacman -S sonic-pi
    echo -e "------------------------ TESTING -----------------------"
    sonic-pi -v
}

while [ 1 ]
do

    get_menu_principal

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)
            get_procesar_menu_basico ;;            
        2)
            get_procesar_menu_sistema ;;       
        3)
            get_procesar_menu_red ;;
        4)
            get_procesar_menu_oficina ;;
        5)
            get_procesar_menu_internet ;;       
        6)
            get_procesar_menu_utilitarios ;;   
        7)
            get_procesar_menu_graficos ;;   
        8)
            get_procesar_menu_audio ;;   
        9)
            get_procesar_menu_video ;;   
        10)
            get_procesar_menu_desarrollo ;;   
        11)
            get_procesar_menu_educacion ;; 
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done
