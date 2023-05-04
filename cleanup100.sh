#~/bin/bash

for i in {1..100}
do 
   echo "Cleanup $i pvc/pod"
   ./cleanup_pod.sh $i
done

