#!/bin/sh

virt-install --import \
             --name fedora \
	     --os-variant fedora26 \
	     --vcpus 2 \
	     --memory 512 \
	     --disk /var/lib/libvirt/images/fedora.qcow2,bus=virtio,format=qcow2 \
	     --disk /var/lib/libvirt/images/ISO/fedora_ds.iso,device=cdrom \
	     --network bridge=virbr0,model=virtio \
	     --graphics none
