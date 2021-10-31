kubectl -n kube-system patch configmap/calico-config --patch-file patches/calico-config.patch
kubectl -n kube-system patch daemonset/calico-node --patch-file patches/calico-node.patch
kubectl -n kube-system apply -f patches/default-ipv6-ippool
