#!/bin/bash -x

sudo yum install -y epel-release
sudo yum install -y nginx

sudo systemctl start nginx

