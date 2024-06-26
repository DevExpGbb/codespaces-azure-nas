#! /bin/bash

export MOUNT_POINT=/mnt/azure
export TMP_PATH=/mnt/blobfusetmp

# use the azure cli to create an ADLS storage account

# install blobfuse
sudo apt update
sudo apt install -y blobfuse

# create a directory to mount the share
sudo mkdir -p $MOUNT_POINT
sudo mkdir -p $TMP_PATH

sudo blobfuse $MOUNT_POINT --tmp-path=$TMP_PATH --config-file=./blob_fuse_connection.cfg -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120


# install fio
sudo apt install -y fio

# create a file to test the mounted share
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4k --direct=0 --size=1G --numjobs=1 --runtime=60 --group_reporting --filename=$MOUNT_POINT/testfile