
######################## MASTER

#! /bin/bash
sudo su - root
apt-get install -y python-pip && pip install pyzmq && echo 1
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/
pip install locustio
sudo locust -f locust-xmlservice.py --host=http://api.vedur.is  --master
EOF







######################## SLAVE

#! /bin/bash
sudo su - root
apt-get install -y python-pip && pip install pyzmq && echo 1
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/ 
pip install locustio
sudo locust -f locust-xmlservice.py --slave --master-host=104.198.152.67
EOF





######################## TEST


#! /bin/bash
sudo su - root
apt-get install -y python-pip > /dev/null
pip install pyzmq
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/ 
pip install locustio
sudo locust -f locustfile.py --host=http://api.vedur.is --master
EOF







apt-get remove -y python-pip





#! /bin/bash
sudo su - root
apt-get install -y python-pip
pip install pyzmq
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/ 
pip install locustio
locust -f locustfile.py --slave --master-host=104.198.152.67
EOF




sudo su - root
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
git clone https://github.com/kajjjak/imo_stress.git
cd imo_stress/ 
sudo pip install locustio
locust -f locustfile.py --slave --master-host=104.198.152.67
EOF
