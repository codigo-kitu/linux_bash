#!/bin/bash

opcion=0

#-----------MENU PRINCIPAL----------------

get_menu_principal() {
    clear
    echo
    echo -e "\t\t\tImagenes Ayuda Linux Mint\n"

   clear
    echo
    echo -e "\t\t\tLINUX MINT APLICACIONES CONSOLA\n"

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

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}



#--------------------------MENU BASICO--------------------------------------------

get_menu_basico() {
    clear
    echo
    echo -e "\t\t\tMENU BASICO APLICACIONES CONSOLA LINUX MINT\n"

    echo -e "\n\tAPLICACIONES"
    echo -e "\t1. Instalar Neofetch (neofetch)"
    echo -e "\t2. Instalar Terminal (rxvt-unicode) --> (7MB)"	
    echo -e "\t3. Instalar Graficos (feh)"
    echo -e "\t4. Linux Text Editor con Vim (vim)"
    echo -e "\t5. Linux Text Editor con Nano (nano)"

    echo -e "\n\tSERVICIOS"
    echo -e "\t21. Instalar OpenSsh (openssh)"
    echo -e "\t22. Compartir Archivos con samba (samba)"
    echo -e "\t23. Compartir Escritorio Remoto con Vino (vino)"
   

    echo -e "\n\tUTILITARIOS"
    echo -e "\t31. Windows Manager i3 (i3)"
    echo -e "\t32. Windows Manager Open Box (openbox)"

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
						
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}



#-----------MENU SISTEMA----------------

get_menu_sistema() {
    clear
    echo
    echo -e "\t\t\tMENU SISTEMA APLICACIONES CONSOLA LINUX MINT\n"

    echo -e "\n\tMONITOR"
    echo -e "\t1. Monitor con HTop"
    echo -e "\t2. Monitor con Glances"
    echo -e "\t3. Procesos con At"

    echo -e "\nARCHIVOS Y CARPETAS"
    echo -e "\t6. Archivos con Ranger"
    echo -e "\t7. Archivos con Tree"
    echo -e "\t8. Archivos con Midnight Commander"
  
    echo -e "\n\tCOMPRESION"
    echo -e "\t11. Compresion con Tar"
    echo -e "\t12. Compresion con Rar"
  
    echo -e "\n\tDISPLAY MANAGER"
    echo -e "\t16. Display Manager con Lightdm"

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
				exec_instalar_htop;;						
			2)				
				exec_instalar_glances;;	
            3)				
				exec_instalar_at;;			
			6)				
				exec_instalar_ranger;;			
            7)				
				exec_instalar_tree;;						
			8)				
				exec_instalar_mc;;	
            11)				
				exec_instalar_tar;;						
			12)				
				exec_instalar_rar;;	
            16)				
				exec_instalar_lightdm;;
				
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU RED----------------

get_menu_red() {
    clear
    echo
    echo -e "\t\t\tMENU RED APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Herramienta Network Manager"
    echo -e "\t2. Herramienta NMap"
    echo -e "\t3. Herramienta Traceroute"
    echo -e "\t4. Herramienta TcpDump"
    echo -e "\t5. Herramienta Nethogs"

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
				exec_instalar_networkmanager;;						
			2)				
				exec_instalar_nmap;;				
			3)				
				exec_instalar_traceroute;;			
            4)				
				exec_instalar_tcpdump;;						
			5)				
				exec_instalar_nethogs;;		
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU OFICINA----------------

get_menu_oficina() {
    clear
    echo
    echo -e "\t\t\tMENU OFICINA APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Herramienta Escaner"
    echo -e "\t2. Visor PDF"
    echo -e "\t3. Cliente Mail"
    echo -e "\t4. Convertidor de Documentos"
    echo -e "\t5. Traductor Ingles (translate-shell)"

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
				exec_instalar_gocr;;						
			2)				
				exec_instalar_zathura;;				
			3)				
				exec_instalar_mutt;;			
            4)				
				exec_instalar_pandoc;;
            5)				
				exec_instalar_translate_shell;;										
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU INTERNET----------------

get_menu_internet() {
    clear
    echo
    echo -e "\t\t\tMENU INTERNET APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\n\tBROWSER"
    echo -e "\t1. Explorador con Lynx"
    echo -e "\t2. Explorador con Links"
    echo -e "\t3. Explorador con W3m"
    echo -e "\t4. Explorador con Surfraw"

    echo -e "\n\tRSS"
    echo -e "\t11. RSS con Newsboat"
    echo -e "\t12. RSS con Newsbeuter"

    echo -e "\n\tDOWNLOAD"
    echo -e "\t16. Download con Wget"
    echo -e "\t17. Download con RTorrent"

    echo -e "\n\tMAIL"
    echo -e "\t21. Mail con Mutt"
    
    echo -e "\n\tCHAT"
    echo -e "\t26. Chat con Weechat"
    echo -e "\t27. Chat con MCabber"
    
    echo -e "\n\tIRC"
    echo -e "\t31. IRC con Irssi"

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
				exec_instalar_lynx;;						
			2)				
				exec_instalar_links;;				
			3)				
				exec_instalar_w3m;;			
            4)				
				exec_instalar_surfraw;;
            11)				
				exec_instalar_newsboat;;										
		    12)				
				exec_instalar_newsbeuter;;						
			16)				
				exec_instalar_wget;;				
			17)				
				exec_instalar_rtorrent;;			
            21)				
				exec_instalar_mutt;;
            26)				
				exec_instalar_weechat;;	
            27)				
				exec_instalar_mcabber;;
            31)				
				exec_instalar_irssi;;	
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU UTILITARIOS----------------

get_menu_utilitarios() {
    clear
    echo
    echo -e "\t\t\tMENU UTILITARIOS APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Calculadora(bc)"
    echo -e "\t11. Juego Invaders(invaders)"
    
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
				exec_instalar_bc;;						
			11)				
				exec_instalar_ninvaders;;				
				
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU GRAFICOS----------------

get_menu_graficos() {
    clear
    echo
    echo -e "\t\t\tMENU GRAFICOS APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Visualizador de Imagenes(feh)"
    echo -e "\t2. Captura de Päntalla(scrot)"
    
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
				exec_instalar_feh;;						
			2)				
				exec_instalar_scrot;;				
				
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU AUDIO----------------

get_menu_audio() {
    clear
    echo
    echo -e "\t\t\tMENU AUDIO APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Herramienta Volumen con Alsamixer"
    echo -e "\t2. Reproductor con Ncmpcpp"
    echo -e "\t3. Reproductor con CMus"
    echo -e "\t4. Reproductor con Moc"
    
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
				exec_instalar_alsamixer;;						
			2)				
				exec_instalar_ncmpcpp;;				
			3)				
				exec_instalar_cmus;;			
            4)				
				exec_instalar_moc;;							
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU VIDEO----------------

get_menu_video() {
    clear
    echo
    echo -e "\t\t\tMENU VIDEO APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Reproductor de Video con Mplayer (mplayer)"
    echo -e "\t2. Descargar Video Youtube con Youtube_dl (youtube_dl)"
    echo -e "\t3. Descargar Video Youtube con Mps_youtube (mps_youtube)"
    echo -e "\t4. Reproductor Video con Minitube (minitube)"
    echo -e "\t5. Grabador de Video con Byzanz (byzanz)"

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
				exec_instalar_mplayer;;						
			2)				
				exec_instalar_youtube_dl;;				
			3)				
				exec_instalar_mps_youtube;;			
            4)				
				exec_instalar_minitube;;						
			5)				
				exec_instalar_byzanz;;	
					
			*)  
				echo -e "Seleccion Incorrecta";;
		esac

	echo -e "Presione la tecla Enter para continuar"
    read linea

	done
}

#-----------MENU DESARROLLO----------------

get_menu_desarrollo() {
    clear
    echo
    echo -e "\t\t\tMENU DESARROLLO APLICACIONES CONSOLA LINUX MINT\n"
    
    echo -e "\t1. Versionamiento de Codigo (git)"
    
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
				exec_instalar_git;;						
															
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
    echo -e "------------------------ TESTING -----------------------"
    systemctl enable ssh
    
    #ps aux | grep sshd

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


#----------------------------------- MENU SISTEMA ---------------------------------

exec_instalar_htop() {
    echo -e "------------------1. Monitor con HTop(htop)------------------"
    sudo pacman -S htop
    echo -e "------------------------ TESTING -----------------------"
    htop -v
}

exec_instalar_glances() {
    echo -e "------------------2. Monitor con Glances(glances)------------------"
    sudo pacman -S glances
    echo -e "------------------------ TESTING -----------------------"
    glances --version
}

exec_instalar_at() {
    echo -e "------------------3. Procesos con At------------------"
    sudo pacman -S at
    echo -e "------------------------ TESTING -----------------------"
    at -v
}

exec_instalar_ranger() {
    echo -e "------------------6. Archivos con Ranger(ranger)------------------"
    sudo pacman -S ranger
    echo -e "------------------------ TESTING -----------------------"
    ranger --version
}

exec_instalar_tree() {
    echo -e "------------------7. Archivos con Tree(tree)------------------"
    sudo pacman -S tree
    echo -e "------------------------ TESTING -----------------------"
    tree --version
}

exec_instalar_mc() {
    echo -e "------------------8. Archivos con Midnight Commander(mc)------------------"
    sudo pacman -S mc
    echo -e "------------------------ TESTING -----------------------"
    mc --version
}

exec_instalar_tar() {
    echo -e "------------------11. Compresion con Tar(tar)------------------"
    sudo pacman -S tar
    echo -e "------------------------ TESTING -----------------------"
    tar --version
}

exec_instalar_rar() {
    echo -e "------------------12. Compresion con Rar(unrar)------------------"
    sudo pacman -S unrar
    echo -e "------------------------ TESTING -----------------------"
    man rar
}

exec_instalar_lightdm() {
    echo -e "------------------16. Display Manager con Lightdm()------------------"
    sudo pacman -S lightdm
    echo -e "------------------------ TESTING -----------------------"
    lightdm -v
}

#----------------------------------- MENU RED---------------------------------

exec_instalar_networkmanager() {
    echo -e "------------------1. Herramienta Network Manager(networkmanager)---------------------------"
    sudo pacman -S networkmanager
    echo -e "------------------------ TESTING -----------------------"
    networkmanager --version
}

exec_instalar_nmap() {
    echo -e "------------------2. Herramienta NMap(nmap) ---------------------------"
    sudo pacman -S nmap
    echo -e "------------------------ TESTING -----------------------"
    nmap --version
}

exec_instalar_traceroute() {
    echo -e "------------------3. Herramienta Traceroute(traceroute) ---------------------------"
    sudo pacman -S traceroute
    echo -e "------------------------ TESTING -----------------------"
    traceroute --version
}

exec_instalar_tcpdump() {
    echo -e "------------------4. Herramienta TcpDump(tcpdump) ---------------------------"
    sudo pacman -S tcpdump  
    echo -e "------------------------ TESTING -----------------------"
    tcpdump --version
}

exec_instalar_nethogs() {
    echo -e "------------------5. Herramienta Nethogs(nethogs) ---------------------------"
    sudo pacman -S nethogs  
    echo -e "------------------------ TESTING -----------------------"
    nethogs -V
}


#----------------------------------- MENU OFICINA---------------------------------

exec_instalar_gocr() {
    echo -e "------------------1. Herramienta Escaner(gocr)---------------------------"
    sudo pacman -S gocr
    echo -e "------------------------ TESTING -----------------------"
    man gocr
}

exec_instalar_zathura() {
    echo -e "------------------2. Visor PDF(zathura) ---------------------------"
    sudo pacman -S zathura
    echo -e "------------------------ TESTING -----------------------"
    zathura --version
}

exec_instalar_mutt() {
    echo -e "------------------3. Cliente Mail(mutt) ---------------------------"
    sudo pacman -S mutt
    echo -e "------------------------ TESTING -----------------------"
    mutt -v
}

exec_instalar_pandoc() {
    echo -e "------------------4. Convertidor de Documentos(pandoc) ---------------------------"
    sudo pacman -S pandoc  
    echo -e "------------------------ TESTING -----------------------"
    pandoc --version
}

exec_instalar_translate_shell() {
    echo -e "------------------5. Traductor Ingles (translate-shell) ---------------------------"
    sudo pacman -S translate-shell  
    echo -e "------------------------ NO TESTING -----------------------"
    #translate-shell --version
}

#----------------------------------- MENU INTERNET---------------------------------

exec_instalar_lynx() {
    echo -e "------------------1. Explorador con Lynx(lynx)---------------------------"
    sudo pacman -S lynx
    echo -e "------------------------ TESTING -----------------------"
    lynx --version
}

exec_instalar_links() {
    echo -e "------------------2. Explorador con Links(links) ---------------------------"
    sudo pacman -S links
    echo -e "------------------------ TESTING -----------------------"
    links -version
}

exec_instalar_w3m() {
    echo -e "------------------3. Explorador con W3m(w3m) ---------------------------"
    sudo pacman -S w3m
    echo -e "------------------------ TESTING -----------------------"
    w3m --version
}

exec_instalar_surfraw() {
    echo -e "------------------4. Explorador con Surfraw(surfraw) ---------------------------"
    sudo pacman -S surfraw  
    echo -e "------------------------ TESTING -----------------------"
    surfraw -version
}

exec_instalar_newsboat() {
    echo -e "------------------11. RSS con Newsboat(newsboat) ---------------------------"
    sudo pacman -S newsboat  
    echo -e "------------------------ TESTING -----------------------"
    newsboat --version
}

exec_instalar_newsbeuter() {
    echo -e "------------------12. RSS con Newsbeuter(newsbeuter) --> (NO EXISTE)---------------------------"
    sudo pacman -S newsbeuter
    echo -e "------------------------ TESTING -----------------------"
    newsbeuter -v
}

exec_instalar_wget() {
    echo -e "------------------16. Download con Wget(wget) ---------------------------"
    sudo pacman -S wget
    echo -e "------------------------ TESTING -----------------------"
    wget --version
}

exec_instalar_rtorrent() {
    echo -e "------------------17. Download con RTorrent(rtorrent) ---------------------------"
    sudo pacman -S rtorrent
    echo -e "------------------------ TESTING -----------------------"
    man rtorrent
}

exec_instalar_mutt() {
    echo -e "------------------21. Mail con Mutt(mutt) ---------------------------"
    sudo pacman -S mutt  
    echo -e "------------------------ TESTING -----------------------"
    mutt -v
}

exec_instalar_weechat() {
    echo -e "------------------26. Chat con Weechat (weechat) ---------------------------"
    sudo pacman -S weechat  
    echo -e "------------------------ TESTING -----------------------"
    weechat --version
}

exec_instalar_mcabber() {
    echo -e "------------------27. Chat con MCabber(mcabber) ---------------------------"
    sudo pacman -S mcabber  
    echo -e "------------------------ TESTING -----------------------"
    mcabber --version
}

exec_instalar_irssi() {
    echo -e "------------------31. IRC con Irssi (irssi) ---------------------------"
    sudo pacman -S irssi 
    echo -e "------------------------ TESTING -----------------------"
    irssi --version
}

#----------------------------------- MENU UTILITARIOS---------------------------------

exec_instalar_bc() {
    echo -e "------------------1. Calculadora(bc)---------------------------"
    sudo pacman -S bc
    echo -e "------------------------ TESTING -----------------------"
    bc --version
}

exec_instalar_ninvaders() {
    echo -e "------------------11. Juego Invaders(invaders) ---------------------------"
    sudo pacman -S ninvaders
    echo -e "------------------------ TESTING -----------------------"
    ninvaders --version
}

#----------------------------------- MENU GRAFICOS---------------------------------

exec_instalar_feh() {
    echo -e "------------------1. Visualizador de Imagenes(feh)---------------------------"
    sudo pacman -S feh
    echo -e "------------------------ TESTING -----------------------"   
    feh --version
}

exec_instalar_scrot() {
    echo -e "------------------2. Captura de Päntalla(scrot) ---------------------------"
    sudo pacman -S scrot
    echo -e "------------------------ TESTING -----------------------"
    scrot --version
}

#----------------------------------- MENU AUDIO---------------------------------

exec_instalar_alsamixer() {
    echo -e "------------------1. Herramienta Volumen con Alsamixer(alsamixer)---------------------------"
    sudo pacman -S alsamixer
    echo -e "------------------------ TESTING -----------------------"
    man alsamixer
}

exec_instalar_ncmpcpp() {
    echo -e "------------------2. Reproductor con Ncmpcpp(ncmpcpp) ---------------------------"
    sudo pacman -S ncmpcpp
    echo -e "------------------------ TESTING -----------------------"
    ncmpcpp --version
}

exec_instalar_cmus() {
    echo -e "------------------3. Reproductor con CMus(cmus) ---------------------------"
    sudo pacman -S cmus
    echo -e "------------------------ TESTING -----------------------"
    cmus --version
}

exec_instalar_moc() {
    echo -e "------------------4. Reproductor con Moc(moc) ---------------------------"
    sudo pacman -S moc  
    echo -e "------------------------ TESTING -----------------------"
    moc -V
}

#----------------------------------- MENU VIDEO---------------------------------

exec_instalar_mplayer() {
    echo -e "------------------1. Reproductor de Video con Mplayer (mplayer)---------------------------"
    sudo pacman -S mplayer
    echo -e "------------------------ TESTING -----------------------"
    mplayer -v
}

exec_instalar_youtube_dl() {
    echo -e "------------------2. Descargar Video Youtube con Youtube_dl (youtube_dl) ---------------------------"
    sudo pacman -S youtube-dl
    echo -e "------------------------ TESTING -----------------------"
    youtube-dl --version
}

exec_instalar_mps_youtube() {
    echo -e "------------------3. Descargar Video Youtube con Mps_youtube (mps_youtube) ---------------------------"
    sudo pacman -S mps-youtube
    echo -e "------------------------ TESTING -----------------------"
    man mps-youtube --version
}

exec_instalar_minitube() {
    echo -e "------------------4. Reproductor Video con Minitube (minitube) ---------------------------"
    sudo pacman -S minitube  
    echo -e "------------------------ TESTING -----------------------"
    minitube --version
}

exec_instalar_byzanz() {
    echo -e "------------------5. Grabador de Video con Byzanz (byzanz) ---------------------------"
    sudo pacman -S byzanz  
    echo -e "------------------------ TESTING -----------------------"
    man byzanz
}

#----------------------------------- MENU DESARROLLO---------------------------------

exec_instalar_git() {
    echo -e "------------------1. Versionamiento de Codigo (git)---------------------------"
    sudo pacman -S git
    echo -e "------------------------ TESTING -----------------------"
    git --version
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
        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

#echo -"\n\n\t\t\tTeclee cualquier tecla para continuar"
#read -n 1 linea

done
