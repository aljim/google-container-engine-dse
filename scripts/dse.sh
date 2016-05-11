#!/usr/bin/env bash

wget https://github.com/DSPN/install-datastax/archive/master.zip
apt-get -y install unzip
unzip master.zip
cd install-datastax-master/bin

cloud_type="google"
seed_nodes_dns_names=$SEED_NODE_SERVICE
data_center_name="dc0"

echo "Configuring nodes with the settings:"
echo cloud_type $cloud_type
echo seed_nodes_dns_names $seed_nodes_dns_names
echo data_center_name $data_center_name

apt-get -y install curl
apt-get -y install sudo
./dse.sh $cloud_type $seed_nodes_dns_names $data_center_name

sleep 3600