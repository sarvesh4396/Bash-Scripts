#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# This script makes a bootable kali-linux drive persistent.

echo "Making persistence...."

# Mounting dir..
mount_dir="/mnt/persistence"

# Listing disks
fdisk -l

# reading partition
read -p "Enter the partition name [eg: sdb1/sdb2...]: " partition

conf_dir="/dev/"$partition

mkdir -p $mount_dir

mount $conf_dir $mount_dir/

echo "/ union" >$mount_dir/persistence.conf

umount $conf_dir

echo "Setup Complete. Reboot Started."

reboot
