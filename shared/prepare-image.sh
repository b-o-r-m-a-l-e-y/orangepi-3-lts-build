#!/bin/bash
dd if=/dev/zero of=/dev/mmcblk0 bs=1M count=1

dd if=./u-boot/u-boot-sunxi-with-spl.bin of=/dev/mmcblk0 bs=1024 seek=8
sfdisk /dev/mmcblk0 < mmcblk.sfdisk
