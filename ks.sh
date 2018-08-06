#!/bin/sh

virt-install --name centos7 \
	     --os-variant rhel7.4 \
	     --vcpus 2 \
	     --memory 2048 \
	     --disk /var/lib/libvirt/images/centos7.qcow2,bus=virtio,format=qcow2,size=15 \
	     --network bridge=virbr0,model=virtio \
	     --location http://192.168.124.1/repo/CentOS7/ \
	     --extra-args "inst.ks=http://192.168.124.1/web/centos7.ks console=ttyS0"

virsh console centos7
