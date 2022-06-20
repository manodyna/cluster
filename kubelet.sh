!#/bin/bash
sudo swapoff -a
sudo systemctl restart kubelet.service
systemctl status kubelet
