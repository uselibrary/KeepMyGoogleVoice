#!/bin/bash
#URL: https://github.com/uselibrary/KeepMyGoogleVoice
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
  yum -y install python36
  yum -y install python36-setuptools
  easy_install-3.6 pip
  pip3 install googlevoice
elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
  echo "Debian-based"
  apt install python3
  apt install python3-pip
  pip3 install googlevoice
else
  echo "OS is not supported"
  echo "Please install gv.py manually"
fi
#finished
echo -ne '\n0 0 1 * * root python3 /root/gv.py \n\n' >>/etc/crontab
echo "Please input you email and passwords into /etc/gv.py"
echo "Finished"
