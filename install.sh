#!/bin/sh

virt-install --name zfs \
	     --os-variant freebsd11.1 \
	     --vcpus 2 \
	     --memory 2048 \
	     --disk /var/lib/libvirt/images/zfs.qcow2,bus=virtio,format=qcow2,size=15 \
	     --cdrom /var/lib/libvirt/images/ISO/FreeBSD-11.1-RELEASE-amd64-disc1.iso \
	     --network bridge=virbr0,model=virtio
