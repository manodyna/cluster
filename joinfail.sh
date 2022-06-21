#!/bin/bash
sudo kill -9 $(sudo lsof-i:10250)
sudo rm /etc/kubernetes/kubelet.conf
sudo rm /etc/kubernetes/pki/ca.crt
sudo rm /etc/kubernetes/bootstrap-kubelet.conf
