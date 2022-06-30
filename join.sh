#!/bin/bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get update && sudo apt-get install -y apt-transport-https
sudo systemctl start docker
sudo systemctl enable docker
sudo kubeadm join 10.1.10.63:6443 --token 85rnqz.zctn8cc47q1w595c \
	--discovery-token-ca-cert-hash sha256:d78598d8dd58e453e42af262501e8c1ff8cbcd9ce4d1cbb649ef9b4f3b5b307f \
	--node-name node01

