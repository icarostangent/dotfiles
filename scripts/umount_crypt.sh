#!/bin/bash  

sudo umount -l /mnt/crypt
sudo cryptsetup luksClose /dev/mapper/crypt
