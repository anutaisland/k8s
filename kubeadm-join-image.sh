#!/bin/bash
K8S_VERSION=v1.13.4
ETCD_VERSION=3.2.24
FLANNEL_VERSION=v0.11.0-amd64
DNS_VERSION=1.2.6
PAUSE_VERSION=3.1
# 基本组件
docker pull mirrorgooglecontainers/kube-proxy:$K8S_VERSION
docker pull mirrorgooglecontainers/pause:$PAUSE_VERSION

# 修改tag
docker tag mirrorgooglecontainers/kube-proxy:$K8S_VERSION k8s.gcr.io/kube-proxy:$K8S_VERSION
docker tag mirrorgooglecontainers/pause:$PAUSE_VERSION k8s.gcr.io/pause:$PAUSE_VERSION

#删除冗余的images
docker rmi mirrorgooglecontainers/kube-proxy:$K8S_VERSION
docker rmi mirrorgooglecontainers/pause:$PAUSE_VERSION
