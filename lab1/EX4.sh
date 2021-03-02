od -vAn -N100 -tu2 < /dev/random > numbers.txt

./average.sh $(<numbers.txt)