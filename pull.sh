#!/usr/bin/env bash

#rancher/rancher-agent   v2.1.7
#rancher/rancher         stable
#rancher/rke-tools:v0.1.16
#rancher/hyperkube:v1.13.4-rancher1

images=(rancher:stable rancher-agent:v2.1.7 rke-tools:v0.1.16 hyperkube:v1.13.4-rancher1)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/rancherc/$image
  docker tag registry.cn-beijing.aliyuncs.com/rancherc/$image rancher/$image
  docker rmi registry.cn-beijing.aliyuncs.com/rancherc/$image
done