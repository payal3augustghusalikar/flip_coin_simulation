#! /bin/bash -x
Hcount=0
Tcount=0
i=1


while [ $i -le 20 ]
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

done
echo "heads won $Hcount times & tails won $Tcount times"
