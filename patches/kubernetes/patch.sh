kubectl -n default delete service kubernetes
kubectl -n default apply -f patches/kubernetes.service
