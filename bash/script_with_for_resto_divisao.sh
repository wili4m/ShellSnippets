echo -n "Informe o backlog: "
read Backlog

case $Backlog in
   4|3|2|1) strikes=1.00 ;;
   *) strikes=$(echo "scale=2; $Backlog / 4" | bc) ;;
esac

restoDivisao=$(echo $strikes | cut -d. -f2)

if [ ! -z $restoDivisao ] && [ $restoDivisao -ne "00" ]; then

    strikes=$(echo $strikes | cut -d. -f1)
    strikes=$(expr $strikes + 1)

else

    strikes=$(echo $strikes | cut -d. -f1)

fi

if [ $strikes -ge "1" ]; then

    for strikeBacklog in $(seq 1 $strikes); do
        echo -e "Lote ${strikeBacklog}...\n" 
        echo "ComandoAqui"; done

fi