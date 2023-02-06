#!/bin/bash

# Device 
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/rinto02/android_device_realme_rmx2020-pbrp.git -b android-12.1"

export DEVICE="RMX2020"
export OEM="realme"
export TARGET="recoveryimage"
export OF_MAINTAINER="Rinto"
export FOX_BUILD_TYPE="eng"
export OUTPUT="OrangeFox*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://gitlab.com/OrangeFox/kernel/mojito.git"
#export PLATFORM="sm6150" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
export EXTRA_CMD="git clone https://github.com/OrangeFoxRecovery/Avatar.git misc"

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
