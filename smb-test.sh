#! /bin/bash

export STORAGE_ACCOUNT_NAME="xxx"
export STORAGE_ACCOUNT_KEY="xxx"
export SHARENAME="xxx"


# install cifs-utils/smbclient
sudo apt update
sudo apt install cifs-utils

# mount an azure storage account as an smb share

# create a directory to mount the share
sudo mkdir /mnt/azure

# mount the share
sudo mount -t cifs //$STORAGE_ACCOUNT_NAME.file.core.windows.net/$SHARENAME /mnt/azure -o vers=3.0,username=$STORAGE_ACCOUNT_NAME,password=$STORAGE_ACCOUNT_KEY,dir_mode=0777,file_mode=0777

# check the mount
df -h


# install fio
sudo apt install fio

# create a file to test the mounted share
sudo fio --name=randwrite --ioengine=libaio --iodepth=32 --rw=randwrite --bs=4k --direct=0 --size=1G --numjobs=1 --runtime=60 --group_reporting --filename=/mnt/azure/testfile


# unmount the share
sudo umount /mnt/azure