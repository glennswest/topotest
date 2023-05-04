cat <<EOF | kubectl create -f -
apiVersion: v1
kind: Pod
metadata:
  name: topolvm-pod-$1
spec:
  containers:
  - name: volume-container-$1
    image: nginx:stable-alpine
    imagePullPolicy: IfNotPresent
    volumeMounts:
    - name: topolvm-volume-$1
      mountPath: /data
    ports:
    - containerPort: 80
  volumes:
  - name: topolvm-volume-$1
    persistentVolumeClaim:
      claimName: topopvc-$1
EOF

