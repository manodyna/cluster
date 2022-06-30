sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -F INPUT
sudo iptables -F OUTPUT
sudo iptables -F FORWARD
sudo ifconfig cni0 down
sudo ip link delete cni0
sudo ifconfig flannel.1 down
sudo ip link delete flannel.1
sudo rm -rf /var/lib/cni/
sudo rm -rf /etc/cni/net.d
sudo rm -rf ~/.kube
