kubectl -n kube-system delete service kube-dns
kubectl -n kube-system apply -f patches/kube-dns.service
kubectl -n kube-system patch configmap/coredns --patch-file=patches/coredns.patch
