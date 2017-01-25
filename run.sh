#!/bin/bash

#OS_VERSION=ubuntu
OS_VERSION=centos

export HOSTNAMES=${HOSTNAMES:-"test1,test2"}
export VIRT_NUMBER=${VIRT_NUMBER:-"2"}
export VIRT_MEM=${VIRT_MEM:-"4096"}
export VIRT_CPUS=${VIRT_CPUS:-"4"}
export IMAGE_NAME=${IMAGE_NAME:-"disk.img"}
export IPADDR_PREFIX=${IPADDR_PREFIX:-"192.168.133."}

export MGMT_NET_GW="192.168.222.1"
export MGMT_NET_MASK="255.255.255.0"
export MGMT_NET_IP_START="192.168.222.2"
export MGMT_NET_IP_END="192.168.222.254"

WORK_DIR=$(cd $(dirname ${BASH_SOURCE:-$0});pwd)
if [[ $OS_VERSION == centos ]]; then
    if [[ ! -e CentOS-7-x86_64-GenericCloud.qcow2 ]]; then
        wget http://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2
    fi
    export IMAGE_URL=file://$WORK_DIR/CentOS-7-x86_64-GenericCloud.qcow2
    cd $WORK_DIR/centos
    rm -rf work
    ./deploy.sh
fi

if [[ $OS_VERSION == ubuntu ]]; then
    if [[ ! -e trusty-server-cloudimg-amd64-disk1.img ]]; then
        wget https://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64-disk1.img
    fi
    export IMAGE_URL=file://$WORK_DIR/trusty-server-cloudimg-amd64-disk1.img
    cd $WORK_DIR/ubuntu
    rm -rf work
    ./deploy.sh
fi
