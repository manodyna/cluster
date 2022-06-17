#!/bin/bash
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
kubeadm init 

