apiVersion: v1
kind: PersistentVolume
metadata:
  name: volume-for-mysql
  labels:
    type: local
spec:
  #using local node storage
  #kubectl get storageclass
  storageClassName: hostpath
  capacity:
    storage: 5Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/mnt/data"