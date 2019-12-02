#display the message on the terminal
echo "Running the input preparation for the turbulent simulation"
n=1
for Re in 10000 50000 100000 500000 1000000
do
m=1
for xMesh in 512 1024
do
o=1
for yMesh in 128 256
do
t=1
for zMesh in 256 512
do
mkdir Mustafa_${n}_${m}_${o}
cd originalF
sed -e "s/rrrrrrr/${Re}/" -e "s/xxxx/${xMesh}/" -e "s/yyy/${yMesh}/" -e "s/zzzz/${zMesh}/" inputOrig > input.dat
cp input.dat ../Mustafa_${n}_${m}_${o}
cd ../
echo "creating folder Mustafa_${n}_${m}_${o} with input.dat having Re ${Re} , xMesh ${xMesh} y Mesh ${yMesh}"
o=$(( $o + 1 ))
done
m=$(( $m + 1 ))
done
n=$(( $n + 1 ))
done
t=$(( $n + 1 ))
done
echo "input file preparation is done"

