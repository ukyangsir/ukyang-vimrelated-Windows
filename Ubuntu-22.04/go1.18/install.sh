#!/bin/bash
# Copyright (C)2022 By ukyang. All Rights Reserved.
# Author: ukyang
# E-mail: ukyang_ma@163.com
# Date: 2022-06-03
# Description:

cd /usr/local
wget https://golang.google.cn/dl/go1.18.3.linux-amd64.tar.gz
echo "ukyang"|sudo -S tar -xf go1.18.3.linux-amd64.tar.gz
echo ""
rm -rf go1.18.3.linux-amd64.tar.gz
sudo chmod -R 777 go
cd ~
mkdir go