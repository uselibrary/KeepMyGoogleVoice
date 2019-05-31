#!/bin/bash
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #              KeepMyGoogleVoice               #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.1                  #"
echo "    ################################################"
#download
wget --no-check-certificate -O gv.py https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.py && chmod +x gv.py
mv gv.py /root/
#crontab
echo -e ""
echo -e "Prepare the environment."
if cat /etc/*-release | grep -Eqi "centos|red hat|redhat"; then
  echo "RPM-based"
  yum -y install epel-release
  yum -y install python python-pip
  pip install googlevoice
  echo -ne '\n0 0 1 * * root python /home/gv.py \n\n' >>/etc/crontab
elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
  echo "Debian-based"
  apt install python3
  apt install python3-pip
  pip3 install googlevoice
  echo -ne '\n0 0 1 * * root python3 /home/gv.py \n\n' >>/etc/crontab
else
  echo "OS is not supported"
  echo "Please install gv.py manually"
fi
