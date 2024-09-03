#!/bin/bash

opcion=0
linea=""

nombre=""
aplicacion=""
path=""
path_working=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tACCESOS DIRECTOS DE ESCRITORIO\n"
    
	echo -e "\t1. Abrir Carpetas"
    echo -e "\t2. Ejecutar Java"
    echo -e "\t3. Ejecutar Shell Script"
    echo -e "\t4. Ejecutar Eclipse Java"
    echo -e "\t5. Ejecutar Aplicacion Terminal (Terminal=true)"
    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_eject_abrir_carpetas() {
	clear
	
    echo -e "-----------1. Abrir Carpetas -------------"
    echo
    
    read -p "Ingrese nombre del archivo(ejemplos, tutoriales,etc): " nombre
    read -p "Ingrese nombre de Aplicacion File Manager(thunar,caja,etc): " aplicacion
    read -p "Ingrese path para Abrirs(/home/ejemplos,/home/tutoriales,etc): " path

    touch output/$nombre.desktop

    echo -e "[Desktop Entry]" >> output/$nombre.desktop
    echo -e "Type=Application" >> output/$nombre.desktop
    echo -e "Name=$nombre" >> output/$nombre.desktop
    echo -e "Name[en_US]=$nombre" >> output/$nombre.desktop
    echo -e "GenericName=$nombre" >> output/$nombre.desktop
    echo -e "Comment=Abrir carpeta" >> output/$nombre.desktop
    echo -e "Exec=$aplicacion $path" >> output/$nombre.desktop
    #echo -e "Icon=$aplicacion" >> output/$nombre.desktop
    echo -e "Icon=folder" >> output/$nombre.desktop
    echo -e "Terminal=false" >> output/$nombre.desktop
    echo -e "Categories=System;" >> output/$nombre.desktop
    echo -e "Keywords=folders;" >> output/$nombre.desktop
   
    chmod ugo+x output/$nombre.desktop

    echo -e "\n\tARCHIVO GENERADO CORRECTAMENTE.............."
}  

get_eject_java_jar() {
	clear
	
    echo -e "-----------2. Ejecutar Java Jar -------------"
    echo
    
    read -p "Ingrese nombre del archivo(ejemplos, tutoriales,etc): " nombre
    #read -p "Ingrese nombre de Aplicacion File Manager(thunar,caja,etc): " aplicacion
    read -p "Ingrese path nombre Archivo jar (/home/ejemplos/file1.jar,/home/tutoriales/file2.jar,etc): " path

    touch output/$nombre.desktop

    echo -e "[Desktop Entry]" >> output/$nombre.desktop
    echo -e "Type=Application" >> output/$nombre.desktop
    echo -e "Name=$nombre" >> output/$nombre.desktop
    echo -e "Name[en_US]=$nombre" >> output/$nombre.desktop
    echo -e "GenericName=$nombre" >> output/$nombre.desktop
    echo -e "Comment=Aplicacion Java" >> output/$nombre.desktop
    echo -e "Exec=java -jar $path" >> output/$nombre.desktop
    #echo -e "Icon=$aplicacion" >> output/$nombre.desktop
    echo -e "Icon=openjdk-11" >> output/$nombre.desktop
    echo -e "Terminal=false" >> output/$nombre.desktop
    echo -e "Categories=Development;" >> output/$nombre.desktop
    echo -e "Keywords=java;" >> output/$nombre.desktop
   
    chmod ugo+x output/$nombre.desktop

    echo -e "\n\tARCHIVO GENERADO CORRECTAMENTE.............."
}  

get_eject_shell_script() {
	clear
	
    echo -e "-----------3. Ejecutar Bash Shell Script -------------"
    echo
    
    read -p "Ingrese nombre del archivo(ejemplos, tutoriales,etc): " nombre
    #read -p "Ingrese nombre de Aplicacion File Manager(thunar,caja,etc): " aplicacion
    read -p "Ingrese path nombre Archivo Shell (/home/ejemplos/file1,/home/tutoriales/file2, /home/file3, etc): " path

    touch output/$nombre.desktop

    echo -e "[Desktop Entry]" >> output/$nombre.desktop
    echo -e "Type=Application" >> output/$nombre.desktop
    echo -e "Name=$nombre" >> output/$nombre.desktop
    echo -e "Name[en_US]=$nombre" >> output/$nombre.desktop
    echo -e "GenericName=$nombre" >> output/$nombre.desktop
    echo -e "Comment=Aplicacion Bash Shell Script" >> output/$nombre.desktop
    echo -e "Exec='$path'" >> output/$nombre.desktop
    #echo -e "Icon=$aplicacion" >> output/$nombre.desktop
    echo -e "Icon=utilities-terminal" >> output/$nombre.desktop
    echo -e "Terminal=false" >> output/$nombre.desktop
    echo -e "Categories=Office;" >> output/$nombre.desktop
    echo -e "Keywords=Shell;" >> output/$nombre.desktop
   
    chmod ugo+x output/$nombre.desktop

    echo -e "\n\tARCHIVO GENERADO CORRECTAMENTE.............."
}  

get_eject_eclipse_java() {
	clear
	
    echo -e "-----------4. Ejecutar Eclipse Java -------------"
    echo
    
    read -p "Ingrese nombre del archivo(ejemplos, tutoriales,etc): " nombre
    read -p "Ingrese PATH BASE eclipse (/home/ejemplos/eclipse,/home/tutoriales/eclipse,etc): " path

    touch output/$nombre.desktop

    echo -e "[Desktop Entry]" >> output/$nombre.desktop
    echo -e "Type=Application" >> output/$nombre.desktop
    echo -e "Name=$nombre" >> output/$nombre.desktop
    echo -e "Name[en_US]=$nombre" >> output/$nombre.desktop
    echo -e "GenericName=$nombre" >> output/$nombre.desktop
    echo -e "Comment=Aplicacion Java" >> output/$nombre.desktop
    echo -e "Exec=$path/eclipse" >> output/$nombre.desktop
    echo -e "Icon=$path/icon.xpm" >> output/$nombre.desktop
    #echo -e "Icon=$aplicacion" >> output/$nombre.desktop   
    echo -e "Terminal=false" >> output/$nombre.desktop
    echo -e "Categories=Development;" >> output/$nombre.desktop
    echo -e "Keywords=java;" >> output/$nombre.desktop
   
    chmod ugo+x output/$nombre.desktop

    echo -e "\n\tARCHIVO GENERADO CORRECTAMENTE.............."
}  

get_eject_aplicacion_terminal() {
	clear
	
    echo -e "-----------5. Ejecutar Aplicacion Terminal (Terminal=true) -------------"
    echo
    
    read -p "Ingrese nombre del archivo(ejemplos, tutoriales,etc): " nombre
    #read -p "Ingrese nombre de Aplicacion File Manager(thunar,caja,etc): " aplicacion
    read -p "Ingrese path nombre Archivo Shell (/home/ejemplos/file1,/home/tutoriales/file2, /home/file3, etc): " path
    read -p "Ingrese path Carpeta de Trabajo (/home/ejemplos/,/home/tutoriales/, /home/, etc): " path_working

    touch output/$nombre.desktop

    echo -e "[Desktop Entry]" >> output/$nombre.desktop
    echo -e "Type=Application" >> output/$nombre.desktop
    echo -e "Name=$nombre" >> output/$nombre.desktop
    echo -e "Name[en_US]=$nombre" >> output/$nombre.desktop
    echo -e "GenericName=$nombre" >> output/$nombre.desktop
    echo -e "Comment=Aplicacion Terminal" >> output/$nombre.desktop
    echo -e "Exec='$path'" >> output/$nombre.desktop
    #echo -e "Icon=$aplicacion" >> output/$nombre.desktop
    echo -e "Icon=utilities-terminal" >> output/$nombre.desktop
    echo -e "Terminal=true" >> output/$nombre.desktop
    echo -e "Categories=Office;" >> output/$nombre.desktop
    echo -e "Keywords=Shell;" >> output/$nombre.desktop
    echo -e "Path=$path_working" >> output/$nombre.desktop

    chmod ugo+x output/$nombre.desktop

    echo -e "\n\tARCHIVO GENERADO CORRECTAMENTE.............."
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
			get_eject_abrir_carpetas ;;           
        2)
             get_eject_java_jar;;          
        3)
             get_eject_shell_script;;
        4)
             get_eject_eclipse_java;;
        5)
             get_eject_aplicacion_terminal;;
        81)
             get_eject_abrir_carpetas;;        
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done

