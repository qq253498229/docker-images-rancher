#!/usr/bin/env bash

#rancher/rancher-agent:v2.1.7
#rancher/rancher:stable
#rancher/rke-tools:v0.1.16
#rancher/hyperkube:v1.13.4-rancher1
#rancher/coreos-etcd:v3.2.24
#rancher/nginx-ingress-controller-defaultbackend:1.4
#rancher/nginx-ingress-controller:0.21.0-rancher1
#rancher/metrics-server-amd64:v0.3.1
#rancher/k8s-dns-kube-dns-amd64:1.15.0
#rancher/k8s-dns-dnsmasq-nanny-amd64:1.15.0
#rancher/k8s-dns-sidecar-amd64:1.15.0
#rancher/coreos-flannel:v0.10.0
#rancher/calico-node:v3.4.0
#rancher/calico-cni:v3.4.0

images=(
 rancher-agent:v2.1.7
 rancher:stable
 rke-tools:v0.1.16
 hyperkube:v1.13.4-rancher1
 coreos-etcd:v3.2.24
 nginx-ingress-controller-defaultbackend:1.4
 nginx-ingress-controller:0.21.0-rancher1
 metrics-server-amd64:v0.3.1
 k8s-dns-kube-dns-amd64:1.15.0
 k8s-dns-dnsmasq-nanny-amd64:1.15.0
 k8s-dns-sidecar-amd64:1.15.0
 coreos-flannel:v0.10.0
 calico-node:v3.4.0
 calico-cni:v3.4.0
)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/rancherc/$image
  docker tag registry.cn-beijing.aliyuncs.com/rancherc/$image rancher/$image
  docker rmi registry.cn-beijing.aliyuncs.com/rancherc/$image
done