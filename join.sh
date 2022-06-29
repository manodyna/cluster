#!/bin/bash
kubeadm join 10.1.10.63:6443 --token f04vj7.7jd3bvwfq2u321an \
	--discovery-token-ca-cert-hash sha256:21b7e786c4b5b0d835ad027809268800c631158bab3e2fccdc9e1e42daca691c \
	--node-name node01

