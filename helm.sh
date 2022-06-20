#!/bin/bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm repo add traefik-mesh https://helm.traefik.io/mesh
helm repo update
export K3S_KUBECONFIG_MODE="644"
curl -sfL https://get.k3s.io | sh -s - --docker
helm install traefik-mesh traefik-mesh/traefik-mesh
