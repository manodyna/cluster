sudo apt install firewalld
firewall-cmd --permanent --add-port=4789/udp 
kubectl get pods -n calico-system
firewall-cmd --permanent --add-port=5473/tcp 
sudo firewall-cmd --permanent --add-port=179/tcp 
kubectl get pods -n calico-system
sudo firewall-cmd --reload

