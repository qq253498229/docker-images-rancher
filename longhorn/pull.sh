#!/usr/bin/env bash
images=(
 csi-attacher:v0.4.2
 csi-provisioner:v0.4.2
 driver-registrar:v0.4.1
 longhorn-manager:v0.4.0
)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/rancherc/$image
  docker tag registry.cn-beijing.aliyuncs.com/rancherc/$image rancher/$image
  docker rmi registry.cn-beijing.aliyuncs.com/rancherc/$image
done