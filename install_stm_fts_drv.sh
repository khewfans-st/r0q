#!/bin/bash

# Build kernel
./build_kernel_GKI.sh

# Copy LKM into magisk modules
cp out/msm-waipio-waipio-gki/dist/stm_ts_spi.ko magisk_module/

# Install magisk module into phone
cd magisk_module
make install
