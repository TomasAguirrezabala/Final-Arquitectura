echo "Buenos dias, $USER"
echo "**********************"
opcion=0
while [ "$opcion" -ne "3" ]
do

	echo "¿Que se le ofrece?"
	echo "**********************"
	echo "1. Quiero saber la hora"
	echo "2. Quiero saber el clima de hoy en Bahia Blanca"
	echo "3. Nada"
	echo "**********************"
	echo "1, 2 o 3?: "
	echo "**********************"
    read opcion
    clear
	case $opcion in
		1)
			echo "**********************"
			echo "Son las"
			date +"%I:%M %p"
			echo "**********************"
			sleep 3
            clear
            ;;
            
		2)
			echo "**********************"
			curl wttr.in/Bahia-Blanca?0
			echo "**********************"
			sleep 5
            clear
            ;;
            				
	esac
done
echo "Gracias por utilizarme, $USER."
sleep 3