#! /bin/bash -x

Hcount=0
Tcount=0
i=1
function tie()
{
while [ $Hcount -le 21 ] | [ $Tcount -le 21 ]
do
	a=$(expr $RANDOM % 10)
	b=$(expr $a % 2)
	echo "coin tossed $i times"

      if [ $b -eq 0 ]
      then
         Hcount=$( expr $Hcount + 1 )
      elif [ $b -eq 1 ]
      then
      	Tcount=$( expr $Tcount + 1 )
      fi
         i=$( expr $i + 1 )

	if [ $Hcount -eq 21 ]
   then
      echo "head won 21 times"
   break

   elif [ $Tcount -eq 21 ]
   then
      echo "Tail won 21 times"
   break
   fi
done

echo "Heads won $Hcount times and Tail won $Tcount times"
}

if [ $Hcount -eq $Tcount ]
then
	echo "game start or tie"

	while [ `expr $Hcount - $Tcount` -lt 3 ] | [ `expr $Tcount - $Hcount` -lt 3 ]
	do
		tie $1
	break
	done
fi

if [ $Hcount -gt $Tcount ]
then
	w=$( expr $Hcount - $Tcount )
	echo " heads won by $w times more than tails "
else
	x=$( expr $Tcount - $Hcount )
	echo " Tails won by $x times more than Heads "
fi


