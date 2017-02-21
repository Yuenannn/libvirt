# libvirt

## Download image

CentOS 7: http://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2
Ubuntu 14: https://cloud-images.ubuntu.com/trusty/current/trusty-server-cloudimg-amd64-disk1.img

## Set image disk

```
qemu-img info disk.img
qemu-img resize disk.img +1000G
```

## Edit and run ``run.sh``
