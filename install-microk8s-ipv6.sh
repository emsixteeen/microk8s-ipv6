sudo snap install microk8s --classic --channel=1.20/stable
sudo sudo snap alias microk8s.kubectl kubectl

sudo sysctl -w net.ipv6.conf.all.forwarding=1

microk8s enable dns
microk8s enable storage

(cd patches && ./patch-microk8s.sh)
sudo microk8s refresh-certs
# microk8s stop && microk8s start
sudo systemctl restart snap.microk8s.daemon-proxy.service

(cd patches && ./patch-kubernetes.sh)
