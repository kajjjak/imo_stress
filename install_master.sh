#! /bin/bash
apt-get update
apt-get install -y git
wget https://bootstrap.pypa.io/get-pip.py
pip install locustio
locust -f locust-xmlservice.py --host=http://api.vedur.is  --master
