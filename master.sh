#!/bin/bash
swapoff -a
systemctl start kubelet
docker start (docker ps -a -q)
docker start (docker ps -a -q)
