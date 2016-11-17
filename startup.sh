#! /bin/bash
sudo su - root
apt-get update
apt-get install -y git
apt install -y python-pip
apt-get install -y python-zmq
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/ 
./install_slave.sh

#locust -f locustfile.py --slave  --master-host=104.198.152.67