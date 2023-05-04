#~/bin/bash
oc project topotest
for i in {1..100}
do 
   echo "Deploy $i pvc/pod"
   ./testit.sh $i &
done

