#! /bin/bash -x
Hcount=0
Tcount=0
i=1


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
	if [ $Hcount -eq 11 ]
        then
                echo "======>head won 21 times"
        break

        elif [ $Tcount -eq 21 ]
        then
        echo "=====>Tail won 21 times"
        break
        fi
done
if [ $Hcount -eq $Tcount ]
then
echo " tie "
else
echo "heads won $Hcount times & tails won $Tcount times"
fi
if [ $Hcount -gt $Tcount ]
then
w=$( expr $Hcount - $Tcount )
echo " heads won by $w times "
else
x=$( expr $Tcount - $Hcount )
echo " Tails won by $x times"
fi


