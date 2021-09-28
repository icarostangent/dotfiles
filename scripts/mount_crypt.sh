#!/bin/bash


sudo cryptsetup luksOpen /dev/sda3 crypt
sudo mount /dev/mapper/crypt /mnt/crypt
