#!/bin/bash

opcion=0
linea=""

path="";
origen=""
final=""
parametros=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tCOMPRESION\n"
    
	echo -e "\t1. Tar Compresion(tar)"
    echo -e "\t2. Tar DesCompresion(tar)"

	echo -e "\n\t3. BZip Compresion(bzip2)"
	echo -e "\t4. BZip DesCompresion(bunzip2)"

    echo -e "\n\t5. Rar Compresion(rar)"
    echo -e "\t6. Rar DesCompresion(rar)"

    echo -e "\n\t7. Zip Compresion(zip)"
    echo -e "\t8. Zip DesCompresion(unzip)"

	echo -e "\n\t9. GZip Compresion(gzip)"
	echo -e "\t10. GZip DesCompresion(gunzip)"

    #echo -e "\t3. Detalle USB(eject)"
    
    echo -e "\n\tAYUDA"
    echo -e "\t\t81. Ayuda Compresion 1(Tar,Rar,Zip,BZip)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_tar_compresion() {
	clear
    echo -e "-----------TAR Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo/Carpeta Origen(v1.py): " origen
    read -p "Ingrese el Archivo Final(v1.tar): " final

    tar -cvzf $path/$final $path/$origen
    
    ##for g1 in $(groups); do
	#	echo -e "-> $g1"
	#done
}  

get_tar_descompresion() {
	clear	
    echo -e "-----------TAR DesCompresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo/Carpeta Origen(v1.py): " origen
    read -p "Ingrese el Archivo Final(v1.tar): " final

    tar -xvzf $path/$origen $path/$final
}  

get_bzip_compresion() {
    clear	
    echo -e "-----------BZip Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo(v1.py): " origen

    bzip2 $path/$origen
}

get_bzip_descompresion() {
	clear
    echo -e "-----------BZip DesCompresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo(v1.py.bz2): " origen

    bunzip2 $path/$origen
}

get_rar_compresion() {
	clear	
    echo -e "-----------RAR Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo/Carpeta Origen(v1.py): " origen
    read -p "Ingrese el Archivo Final(v1.rar): " final

    #tar -cvzf $path/$final $path/$origen
    
    rar -a $path/$final $path/$origen
}

get_rar_descompresion() {
	clear	
    echo -e "-----------RAR Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo(v1.rar): " origen

    rar x $path/$origen

    #tar -cvzf $path/$final $path/$origen
    #rar a $path/$final $path/$origen
}

get_zip_compresion() {
	clear	
    echo -e "-----------ZIP Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo/Carpeta Origen(v1.py): " origen
    read -p "Ingrese el Archivo Final(v1.zip): " final

    #tar -cvzf $path/$final $path/$origen
    
    read -p "Es Parametro Carpeta(-r,[VACIO]): " parametros

    zip $parametros $path/$final $path/$origen
}

get_zip_descompresion() {
	clear	
    echo -e "-----------ZIP DesCompresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo(v1.zip): " origen

    #tar -cvzf $path/$final $path/$origen
    
    unzip $path/$origen
}

get_gzip_compresion() {
	clear	
    echo -e "-----------GZIP Compresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo/Carpeta Origen(v1.py): " origen
    read -p "Ingrese el Archivo Final(v1.gzip): " final

    #tar -cvzf $path/$final $path/$origen
    
    read -p "Es Parametro Carpeta(-r): " parametros

    gzip -c $parametros $path/$origen > $path/$final
}

get_gzip_descompresion() {
	clear	
    echo -e "-----------GZIP DesCompresion-------------"
    echo
    
    read -p "Ingrese el Path Base(/home/bydan/Documents): " path
    read -p "Ingrese el Archivo(v1.gzip): " origen

    #tar -cvzf $path/$final $path/$origen
     
    gunzip $path/$origen
}

get_ayuda_compresion1() {
    feh "./imagen/03_avanzado/07_compresion.jpg"
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in
    
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  get_tar_compresion ;;            
        2)  get_tar_descompresion;;          
        3)  get_bzip_compresion ;;            
        4)  get_bzip_descompresion;;  
        5)  get_rar_compresion ;;           
        6)  get_rar_descompresion;;          
        7)  get_zip_compresion ;;           
        8)  get_zip_descompresion;; 
        9)  get_gzip_compresion ;;           
        10) get_gzip_descompresion;;

        81) get_ayuda_compresion1;;           
        *)  echo -e "Seleccion Incorrecta";;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done