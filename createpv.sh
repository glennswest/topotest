cat <<EOF | kubectl create -f -
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: topopvc-$1
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: lvms-vg1
  resources:
    requests:
      storage: 100Mi
EOF

