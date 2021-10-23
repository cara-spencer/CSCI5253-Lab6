#!/bin/bash

# [START startup_script]

cd /home/mewu4448
curl http://metadata/computeMetadata/v1/instance/attributes/dlLab6 -H \
        "Metadata-Flavor: Google" > dlLab6.py
sudo apt-get update
sudo apt-get install -y python3 python3-pip
pip3 install google-cloud-storage
python3 dlLab6.py
unzip lab6-rest-and-grpc-001cat-master.zip
cd lab6-rest-and-grpc-001cat-master
make grpc
nohup python3 grpc-server.py
nohup python3 rest-server.py




# git clone https://github.com/cu-csci-4253-datacenter/flask-tutorial
# cd flask-tutorial
# sudo python3 setup.py install
# sudo pip3 install -e .

# export FLASK_APP=flaskr
# flask init-db
# nohup flask run -h 0.0.0.0 &

# [END startup_script]