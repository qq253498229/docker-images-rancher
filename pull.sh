#!/usr/bin/env bash

#rancher/rancher-agent   v2.1.7
#rancher/rancher         stable


images=(rancher:stable rancher-agent:v2.1.7)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/rancherc/$image
  docker tag registry.cn-beijing.aliyuncs.com/rancherc/$image rancher/$image
  docker rmi registry.cn-beijing.aliyuncs.com/rancherc/$image
done