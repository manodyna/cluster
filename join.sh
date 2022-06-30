#!/bin/bash
sudo kubeadm join 10.1.10.63:6443 --token 85rnqz.zctn8cc47q1w595c \
	--discovery-token-ca-cert-hash sha256:d78598d8dd58e453e42af262501e8c1ff8cbcd9ce4d1cbb649ef9b4f3b5b307f \
	--node-name node01

