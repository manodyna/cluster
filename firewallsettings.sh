sudo apt install firewalld
sudo firewall-cmd --permanent --add-port=4789/udp 
sudo firewall-cmd --permanent --add-port=5473/tcp 
sudo firewall-cmd --permanent --add-port=179/tcp
sudo firewall-cmd --permanent --add-port=179/tcp --zone=docker
sudo firewall-cmd --reload
