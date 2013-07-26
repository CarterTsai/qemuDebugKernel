#!/bin/bash 

KernelPath=../linux-3.8.2/arch/x86/boot/bzImage

#qemu-system-x86_64 -no-acpi \
#    -kernel $KernelPath \
#    -hda www.img \
#    -net nic \
#    -net tap, ifname=qtap0,script=no \
#    -serial "stdio" -serial "pty" \
#    -append '$console kgdbwait kgdboc=ttyS1'

qemu-system-x86_64  -enable-kvm -m 128\
    -kernel $KernelPath \
    -hda www.img \
    -serial "stdio" -serial "pty" \
    -append '$console kgdbwait kgdboc=ttyS1'

