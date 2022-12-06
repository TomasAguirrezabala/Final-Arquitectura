ALEATORIO=$(( $RANDOM % 50 + 1 ))
INTENTO=0
NUMSECRETO=11
for i in {1..11} 
do  
    if [ "$i" -le "10" ];
    then
        INTENTO=$i
        echo "numero aleatorio generado, cual es?: "
        read NUMEROJUGADOR

        if [ "$NUMEROJUGADOR" -gt "50" ] || [ "$NUMEROJUGADOR" -lt "1" ];
        then 
            echo "Ingresa un numero entre 1 y 50 por favor, empeza de nuevo"
            break
        
        elif [ "$NUMEROJUGADOR" -gt "$ALEATORIO" ]
        then 
            echo "El numero que elegiste es muy alto, intenta uno mas bajo"
        elif [ "$NUMEROJUGADOR" -lt "$ALEATORIO" ]
        then 
            echo "El numero que elegiste es muy bajo, intenta uno mas alto"
        else
            break
        fi
    else
        INTENTO="$NUMSECRETO"
        break
    fi
done
        
if [ "$INTENTO" -le "5" ];
then 
    echo "Sos un capo pegando numeros, jugate una ruleta!"
    sleep 5
    break
elif [ "$INTENTO" -gt "5" ] && [ "$INTENTO" -le "10" ]
then
    echo "Costo pero le pegaste, bien ahi!"
    sleep 5
    break
else
    echo "Si no perdiste para probar el codigo, dejame decirte que pensar no es para vos"
    sleep 5
    break
fi
    


