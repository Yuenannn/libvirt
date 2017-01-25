export HOSTNAMES=${HOSTNAMES:-"centos1,centos2,centos3"}
export VIRT_NUMBER=${VIRT_NUMBER:-"3"}
export VIRT_MEM=${VIRT_MEM:-"4096"}
export VIRT_CPUS=${VIRT_CPUS:-"4"}
export IMAGE_URL=${IMAGE_URL:-"http://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2"}
export IMAGE_NAME=${IMAGE_NAME:-"disk.img"}
export IPADDR_PREFIX=${IPADDR_PREFIX:-"192.168.133."}

export MGMT_NET_GW="192.168.222.1"
export MGMT_NET_MASK="255.255.255.0"
export MGMT_NET_IP_START="192.168.222.2"
export MGMT_NET_IP_END="192.168.222.254"
