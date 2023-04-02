#!/usr/bin/bash
# For orangepi3-lts

export CROSS_COMPILE=/home/orange/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
cd /home/orange/shared/arm-trusted-firmware
make PLAT=sun50i_h6 DEBUG=1 bl31
export BL31=home/orange/shared/arm-trusted-firmware/build/sun50i_h6/debug/bl31.bin

#git clone https://github.com/crust-firmware/crust
#cd /home/orange/shared/crust

export SCP=/dev/null

cd /home/orange/shared/u-boot/
make orangepi_3_defconfig
