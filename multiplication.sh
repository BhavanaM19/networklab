echo "multiplication table"
echo "enter number"
read n
m=0
for((j=1;j<=12;j++))
do
echo -n -e " $j\t"
done
echo ""
echo 
for((i=1;i<=n;i++))
do
for((k=1;k<=12;k++))
do
m=` expr $k \* $i `
echo -n -e " $m\t"
done
echo ""
done

