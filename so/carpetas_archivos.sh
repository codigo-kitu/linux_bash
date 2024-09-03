#!/bin/bash

opcion=0
linea="";

path=""
archivo=""
clave=""
parametros=""
nivel=1

get_menu_opciones() {  
    clear
    echo
    echo -e "\t\t\tARCHIVOS Y CARPETAS\n"

	echo -e "\t1. Path Actual(pwd)"
    echo -e "\t2. Lista de Archivos y Carpetas(ls)"
    echo -e "\t3. Busqueda de Archivos y Carpetas(find)"    
    echo -e "\t4. Busqueda For Path Clave(for)"    
    echo -e "\t5. Tipo de archivo(file)" 

    echo -e "\n\t----------LOCATE----------"
    echo -e "\t\t6. Update DB(updatedb)"
    echo -e "\t\t7. Buscar con Locate(locate)"
    echo -e "\n\t----------GREP----------"
    echo -e "\t\t8. Busqueda en Archivo(grep)"

    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Archivos/Carpetas 1(cd,mkdir,rmdir)"
    echo -e "\t\t82. Ayuda Archivos/Carpetas 2(rm,mv,cp)"
    echo -e "\t\t83. Ayuda Archivos/Carpetas 3(cat,less,more,head,tail)"
    echo -e "\t\t84. Ayuda Archivos/Carpetas 4(find,du,grep,file,tr,sort)"
    echo -e "\t\t85. Ayuda Archivos/Carpetas 5(diff,uniq,cut)"
    echo -e "\t\t86. Ayuda Archivos/Carpetas 6(Ln)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

exec_tipo_archivo() {
    clear
	echo -e "------------Tipo de Archivo(file)---------"
	
    read -p "Ingrese el Archivo(archivo1.txt,mime.types): " archivo

  	file $archivo	
}

get_busqueda_grep_en_archivos() {
    clear
    echo -e "------------Busqueda en Archivo(grep)---------"

	read -p "Ingrese Path Archivo/home/bydan/gPodder/log.txt: " path
    
    read -p "Ingrese Nombre Clave (Logs,2020,etc): " clave

    echo -e "\n---PARAMETROS---"
    echo -e "\n\t(-w) Toda la Palabra"
    echo -e "\t(-i) Mayusculas y Minusculas"
    echo -e "\t(-c) Numero de Aciertos\n"
    echo -e "\t(-n) Numero de Lineas\n"
    echo -e "\t(-v) Invierte los Resultados\n"

    read -p "Construya los parametros(-name xxx,etc): " parametros

    grep $parametros $clave $path	
}

exec_locate_updatedb() {
    clear
	echo -e "------------Update DB(updatedb)---------"
	
  	sudo updatedb	
}

get_busqueda_locate_archivos() {
    clear
    echo -e "------------Buscar con Locate(locate)---------"

	#read -p "Ingrese Path /home/bydan/gPodder: " path
    #read -p "Ingrese Nivel Busqueda(1,2,3,4,5): " nivel
    
    read -p "Ingrese Nombre Clave (Logs,etc): " clave

    echo -e "\n---PARAMETROS---"
    echo -e "\n\t(-c) Numero de Coincidencias"
    echo -e "\t(-b) Nombre de Archivo"
    echo -e "\t(x?) Nombre Exacto\n"
   
    read -p "Construya los parametros(-name xxx,etc): " parametros

    locate $parametros $clave	
}

get_path_actual() {
    clear
	echo -e "------------Path Actual---------"
	
  	pwd	
}

get_lista_archivos_carpetas() {
    clear
	echo -e "------------Lista de Archivos y Carpetas(ls)---------"
	
    read -p "Ingrese Path Base(/home/bydan,etc): " path
    
    echo -e "\n---PARAMETROS---"
    echo -e "\n\t(-l) Lista"
    echo -e "\t(-d) Directorios"
    echo -e "\t(-Sshr) Nombres y Tamano"
    echo -e "\t(-a) Ocultos"
    echo -e "\t(-l -h) Tamano"
    echo -e "\t(-S) Orden Tamano"
    echo -e "\t(-t) Orden Acceso Reciente\n"

    read -p "Construya los parametros(-l,etc): " parametros

  	ls $parametros $path 

    #| more	
}

get_busqueda_for_path_clave_archivos() {
    clear
    echo -e "------------Busqueda For Path Clave(for)---------"

	read -p "Ingrese Path: " path
    read -p "Ingrese Clave: " clave

	for S in $path/$clave*; do
		echo -e "-> $S"
	done
}

get_busqueda_archivos() {
    clear
    echo -e "------------Busqueda de Archivos y Carpetas(find)---------"

	read -p "Ingrese Path /home/bydan/gPodder: " path
    read -p "Ingrese Nivel Busqueda(1,2,3,4,5): " nivel
    
    echo -e "\n---PARAMETROS---"
    echo -e "\n\t(-name) Nombre xxx"
    echo -e "\t(-user) Usuario xxx"
    echo -e "\t(-size) Tamanio xxx\n"
   
    read -p "Construya los parametros(-name xxx,etc): " parametros

    find $path -maxdepth $nivel $parametros	
}

get_ayuda_carpetas_archivos1() {
    feh "./imagen/01_basico/04_archivos_carpetas/041_archivos.jpg"
}

get_ayuda_carpetas_archivos2() {
    feh "./imagen/01_basico/04_archivos_carpetas/042_archivos.jpg"
}

get_ayuda_carpetas_archivos3() {
    feh "./imagen/01_basico/04_archivos_carpetas/043_archivos.jpg"
}

get_ayuda_carpetas_archivos4() {
    feh "./imagen/01_basico/04_archivos_carpetas/044_archivos.jpg"
}

get_ayuda_carpetas_archivos5() {
    feh "./imagen/01_basico/04_archivos_carpetas/045_archivos.jpg"
}

get_ayuda_carpetas_archivos6() {
    feh "./imagen/01_basico/05_link.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_path_actual ;;            
        2)  get_lista_archivos_carpetas;;                   
        3)  get_busqueda_archivos ;;       
        4)  get_busqueda_for_path_clave_archivos ;;
        5)  exec_tipo_archivo ;;
        6)  exec_locate_updatedb ;;
        7)  get_busqueda_locate_archivos ;;
        8)  get_busqueda_grep_en_archivos ;;

        81) get_ayuda_carpetas_archivos1 ;;        
        82) get_ayuda_carpetas_archivos2 ;;        
        83) get_ayuda_carpetas_archivos3 ;;
        84) get_ayuda_carpetas_archivos4 ;;
        85) get_ayuda_carpetas_archivos5 ;;
        86) get_ayuda_carpetas_archivos6 ;;

        *)  
            clear;
            echo -e "Seleccion Incorrecta";;
    esac

	echo -e "Presione la tecla Enter para continuar"	
	read linea
	#read -n 1 -s -r -p "Teclee cualquier tecla para continuar" linea

done