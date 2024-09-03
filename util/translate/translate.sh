#!/bin/bash

opcion=0
linea=""
path="";
archivo=""
variable=""

origen="en"
destino="es"
destino2="fr"

origen_ambiente="en"
destino_frances="fr"
destino_portugues="pt"

audio="en"
idioma=""
frase=""
url=""

#db="2017_contabilidad0"
#tabla=""


get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tTRANSLATE\n"
	
    echo -e "\n\tGENERAL"
    echo -e "\t\t1. Configuracion"
    echo -e "\t\t2. Basico"
    echo -e "\t\t3. Intermedio"
    echo -e "\t\t4. Avanzado"
    
    echo -e "\t\t11. Ambiente Frances"
    echo -e "\t\t12. Ambiente Portugues"

    echo -e "\n\tAYUDA"
    #echo -e "\t\t81. Ayuda Discos 1(Df,Mount)"
   
    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion

    #echo -e "\t\tEscoja una Opcion: "    
    #read opcion
}

get_config_menu() {
    clear
	
    echo -e "-----------1. CONFIGURACION [$origen --> $destino]-------------"
   
    echo -e "\t\t1. Instalar Translate Shell (install translate-shell)"
    echo -e "\t\t2. Opciones Shell (man)"
    echo -e "\t\t3. Mostrar Codigos Idiomas (-T)"
    echo -e "\t\t4. Mostrar Informacion Idiomas (Origen/Destino) (-L en:es)"
    echo -e "\t\t5. Mostrar Informacion Idioma (-L fr)"

    echo -e "\t\t6. Asignar Idioma Origen=Ingles,Destino=Espanol"
    echo -e "\t\t7. Asignar Idioma Origen=Espanol,Destino=Ingles"
    echo -e "\t\t8. Asignar Idiomas (Origen/Destino)"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion


    case $opcion in
    
        0)  
            ;;
        1)
            sudo apt-get install translate-shell
            ;;
        2)
            man trans
            ;;
        3)
	        trans -T
	        ;;          
        4)
            trans -L $origen+$destino
	        ;;
        5)
            read -p "Ingrese Codigo de Idioma(fr): " idioma
            trans -L $idioma
            ;;
        6)
            origen="en"
            destino="es"
            trans -L $origen+$destino
            ;;
        7)
            origen="es"
            destino="en"
            trans -L $origen+$destino
            ;;
	    8)
            read -p "Ingrese Idioma Origen(en): " variable
	        origen=$variable

            read -p "Ingrese Idioma Destino(es): " variable
            destino=$variable

            trans -L $origen+$destino

            echo -e "Proceso Ejecutado Correctamente..."
	        ;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac
}

get_basico_menu() {
    	
    while [ 1 ]
    do
        clear

        echo -e "-----------2. BASICO (Commands Apply for [$origen --> $destino]  )-------------"
       
        echo -e "\t\t1. Traductor Resumido (-b=brief)"
        echo -e "\t\t2. Traductor Resumido Multiple (-b=brief, en:es+fr)"
        echo -e "\t\t3. Traductor Normal ()"
        echo -e "\t\t4. Traductor Normal Multiple (en:es+fr)"
        echo -e "\t\t5. Traductor Diccionario (-d)"
        echo -e "\t\t6. Traductor Diccionario Multiple (-d, en:es+fr)"
        echo -e "\t\t7. Audio Traductor (-p)"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion


        case $opcion in
            0)  
                clear;
                echo -e "Proceso terminado correctamente..."
                break 
                ;;
            1)
                read -p "Ingrese la Frase a traducir: " frase
                
    	        trans -b $origen:$destino "$frase"
                ;;           
            2)
                read -p "Ingrese la Frase a traducir: " frase

                trans -b $origen:$destino+$destino2 "$frase"
                ;;  
            3)
                read -p "Ingrese la Frase a traducir: " frase
                
                trans $origen:$destino "$frase"
                ;;           
            4)
                read -p "Ingrese la Frase a traducir: " frase

                trans $origen:$destino+$destino2 "$frase"
                ;;
            5)
                read -p "Ingrese la Frase a traducir: " frase

                trans -d $origen: "$frase"
                ;;
            6)
                read -p "Ingrese la Frase a traducir: " frase

                trans -d $origen+$destino2: "$frase"
                ;;
            7)
                read -p "Ingrese la Frase a escuchar: " frase

                trans -b -p :$origen "$frase"
                ;;
            *)  
                echo -e "Seleccion Incorrecta";;
        esac
    
    echo -e "\nPresione la tecla Enter para continuar"
    
    read linea

    done
}

get_intermedio_menu() {
    clear
	
    echo -e "-----------3. INTERMEDIO (Shell-Interactive for [$origen --> $destino]  )-------------"
    
    echo -e "\t\t1. Shell Traductor Resumido (-b=brief)"
    echo -e "\t\t2. Shell Traductor Resumido Multiple (-b=brief, en:es+fr)"
    echo -e "\t\t3. Shell Traductor Normal ()"
    echo -e "\t\t4. Shell Traductor Normal Multiple (en:es+fr)"
    echo -e "\t\t5. Shell Traductor Diccionario (-d)"
    echo -e "\t\t6. Shell Traductor Diccionario Multiple (-d, en:es+fr)"
    echo -e "\t\t7. Shell Audio Traductor (-p)"
    #echo -e "\t\t3. Crear Base de Datos (create database)"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion


    case $opcion in
        0)  
            ;;
        1)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -b -shell $origen:$destino
            ;;           
        2)
            trans -b -shell $origen:$destino+$destino2
            ;;  
        3)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -shell $origen:$destino
            ;;           
        4)
            trans -shell $origen:$destino+$destino2
            ;;
        5)
	        trans -d -shell $origen:
            ;;
        6)
            trans -d -shell $origen+$destino2:
            ;;
        7)
            trans -b -p -shell :$origen            
            ;;
        *)  
            echo -e "Seleccion Incorrecta";;
    esac

    #echo -e "\nPresione la tecla Enter para continuar"
    #read linea
}

get_avanzado_menu() {
    
    #while [ 1 ]
    #do	
	    clear
	    echo -e "-----------4. AVANZADO [$origen --> $destino]-------------"	   
	    echo -e "\t\t1. Modo Shell Interactivo (-shell,-I)"
        echo -e "\t\t2. Traducir Url (trans http://www.w3.org/)"
        echo -e "\t\t3. Traducir Archivo (trans file://)"
	    echo -e "\t\t4. Escuchar Audio (trans -p)"
        echo -e "\t\t5. Escuchar Audio desde Archivo(trans -p file://)"
        echo -e "\t\t11. Identificar Idioma segun texto Japones/Chino/Coreano (trans -id)"
	    echo -e "\n\t\t0. Salir\n\n"

	    read -p "Escoja una Opcion: " opcion

	    case $opcion in
    		0)  		    
    		    #clear;
                #echo -e "Proceso terminado correctamente..."
                #break 
                ;;

    		1)
    		    trans -shell $origen:$destino
    		    ;;          

            2)
                read -p "Ingrese la Direccion Web: " url

                trans $origen:$destino $url
                ;;
    		3)
                read -p "Ingrese Path del Archivo (/home/bydan/Documents/traducir.txt): " path

                trans $origen:$destino file://$path                
                ;;
            4)
                read -p "Ingresar Frase a escuchar: " frase

                trans -b -p :$origen "$frase"
                ;;

            5)
                read -p "Ingresar Path del Archivo (/home/bydan/Documents/traducir.txt): " path

                trans -b -p :$origen file://$path
                ;;
            11)
                read -p "Ingresar Frase a descubrir: " frase

                trans -id $frase
                ;;
    		*)  
    		    echo -e "Seleccion Incorrecta";;
	    esac

    #echo -e "\nPresione la tecla Enter para continuar"
    #read linea

    #done
}

get_frances_menu() {
    clear
    
    echo -e "-----------11. AMBIENTE FRANCES (Shell-Interactive for [$origen_ambiente --> $destino_frances]  )-------------"
    
    echo -e "\t\t1. Shell Traductor Resumido (-b=brief)"
    echo -e "\t\t2. Shell Traductor Resumido Multiple (-b=brief, en:es+fr)"
    echo -e "\t\t3. Shell Traductor Normal ()"
    echo -e "\t\t4. Shell Traductor Normal Multiple (en:es+fr)"
    echo -e "\t\t5. Shell Traductor Diccionario (-d)"
    echo -e "\t\t6. Shell Traductor Diccionario Multiple (-d, en:es+fr)"

    echo -e "\t\t11. Asignar Ingles Origen Frances (en)"
    echo -e "\t\t12. Asignar Espanol Origen Frances (en)"
    #echo -e "\t\t3. Crear Base de Datos (create database)"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion


    case $opcion in
        0)  
            ;;
        1)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -b -shell $origen_ambiente:$destino_frances
            ;;           
        2)
            trans -b -shell $origen_ambiente:$destino_frances+$destino_portugues
            ;;  
        3)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -shell $origen_ambiente:$destino_frances
            ;;           
        4)
            trans -shell $origen_ambiente:$destino_frances+$destino_portugues
            ;;
        5)
            trans -d -shell $origen_ambiente:
            ;;
        6)
            trans -d -shell $origen_ambiente+$destino_frances:
            ;;
        
        11)            
            origen_ambiente="en"
            ;;

        12)            
            origen_ambiente="es"
            ;;

        *)  
            echo -e "Seleccion Incorrecta";;
    esac

    #echo -e "\nPresione la tecla Enter para continuar"
    #read linea
}

get_portugues_menu() {
    clear
    
    echo -e "-----------12. AMBIENTE PORTUGUES (Shell-Interactive for [$origen_ambiente --> $destino_portugues]  )-------------"
    
    echo -e "\t\t1. Shell Traductor Resumido (-b=brief)"
    echo -e "\t\t2. Shell Traductor Resumido Multiple (-b=brief, en:es+fr)"
    echo -e "\t\t3. Shell Traductor Normal ()"
    echo -e "\t\t4. Shell Traductor Normal Multiple (en:es+fr)"
    echo -e "\t\t5. Shell Traductor Diccionario (-d)"
    echo -e "\t\t6. Shell Traductor Diccionario Multiple (-d, en:es+fr)"

    echo -e "\t\t11. Asignar Ingles Origen Portugues (en)"
    echo -e "\t\t12. Asignar Espanol Origen Portugues (en)"
    #echo -e "\t\t3. Crear Base de Datos (create database)"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion


    case $opcion in

        0)  
            ;;
        1)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -b -shell $origen_ambiente:$destino_portugues
            ;;           
        2)
            trans -b -shell $origen_ambiente:$destino_portugues+$destino_frances
            ;;  
        3)
            #read -p "Ingrese la Frase a traducir: " frase
            
            trans -shell $origen_ambiente:$destino_portugues
            ;;           
        4)
            trans -shell $origen_ambiente:$destino_portugues+$destino_frances
            ;;
        5)
            trans -d -shell $origen_ambiente:
            ;;
        6)
            trans -d -shell $origen_ambiente+$destino_portugues:
            ;;
        
        11)            
            origen_ambiente="en"
            ;;

        12)            
            origen_ambiente="es"
            ;;

        *)  
            echo -e "Seleccion Incorrecta";;
    esac

    #echo -e "\nPresione la tecla Enter para continuar"
    #read linea
}

get_ayuda_discos1() {
    feh "./imagen/03_avanzado/02_administracion/024_particiones.jpg"
}

get_ayuda_discos2() {
    feh "./imagen/03_avanzado/02_administracion/026_software_tamanio.jpg"
}


while [ 1 ]
do

    get_menu_opciones

    case $opcion in

        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;         

	    1)  get_config_menu ;;  
        2)  get_basico_menu ;;           
        3)  get_intermedio_menu ;;
        4)  get_avanzado_menu ;;

        11) get_frances_menu ;;
        12) get_portugues_menu ;;

        81) get_ayuda_discos1 ;;       
        82) get_ayuda_discos1 ;;

        *) echo -e "Seleccion Incorrecta";;
    esac

echo -e "\nPresione la tecla Enter para continuar"
read linea

done
