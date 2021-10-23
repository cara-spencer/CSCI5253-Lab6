#!/bin/bash

# [START startup_script]

cd /home/mewu4448
# curl http://metadata/computeMetadata/v1/instance/attributes/dlLab6 -H \
#         "Metadata-Flavor: Google" > dlLab6.py
sudo apt-get update
sudo apt-get install -y python3 python3-pip protobuf-compiler
pip3 install google-cloud-storage grpcio grpcio_tools
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade Pillow
pip3 install flask jsonpickle
sudo rm -rf CSCI5253-Lab6
git clone https://github.com/001cat/CSCI5253-Lab6.git
cd CSCI5253-Lab6
make grpc
nohup python3 grpc-server.py &
nohup python3 rest-server.py &


# [END startup_script]