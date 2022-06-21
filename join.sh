#!/bin/bash
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd
kubeadm join 10.1.10.65:6443 --token tfrff6.3uvyi6csupkxsy6m \
	--discovery-token-ca-cert-hash sha256:beac2f7d0b6290268e7676d0b00c84451bbdd5f3293425fed1bd1efc52bf5594  \
	--node-name node01
