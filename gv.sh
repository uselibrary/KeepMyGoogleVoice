#!/bin/bash
clear
echo "    ################################################"
echo "    #                                              #"
echo "    #              KeepMyGoogleVoice               #"
echo "    #                https://pa.ci                 #"
echo "    #                 Version 0.1                  #"
echo "    ################################################"
#Prepare the environment
echo -e ""
echo -e "Prepare the environment."
if cat /etc/*-release | grep -Eqi "centos|red hat|redhat"; then
  echo "RPM-based"
  yum -y install epel-release
  yum -y install python python-pip
  pip install googlevoice
elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
  echo "Debian-based"
  apt install python3
  apt install python3-pip
  pip3 install googlevoice
elif
elif cat /etc/*-release | grep -Eqi "raspberry"; then
  echo "Raspberry-based"
  apt install python3
  apt install python3-pip
  pip3 install googlevoice
else
  echo "OS is not supported"
  echo "Please install gv.py manually"
fi
#download gv.py
wget --no-check-certificate -O appex.sh https://raw.githubusercontent.com/0oVicero0/serverSpeeder_Install/master/appex.sh && chmod +x appex.sh && bash appex.sh install







      yum -y install epel-release


  elif rpm -qa | grep -Eqi "python3"; then
      if rpm -qa | grep -Eqi "pip3"; then
        echo "pip3 is installed"
        pip3 install googlevoice
      else
        yum -y install epel-release
        yum -y install python-pip
        pip install googlevoice
      fi
  elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
    echo "Debian-based"




    echo "unzip installed"
  else
    echo "unzip installing"
    yum -y install unzip
  fi
  if rpm -qa | grep -Eqi "virt-what";then
    echo "virt-what installed"
  else
    echo "virt-what installing"
    yum -y install virt-what
  fi
  if rpm -qa | grep -Eqi "net-tools";then
    echo "net-tools installed"
  else
    echo "net-tools installing"
    yum -y install net-tools
  fi
elif cat /etc/*-release | grep -Eqi "debian|ubuntu"; then
  echo "Debian-based"
  apt-get -y update
  if dpkg -l | grep -Eqi "unzip";then
    echo "unzip installed"
  else
    echo "unzip installing"
    apt-get -y install unzip
  fi
  if dpkg -l | grep -Eqi "virt-what";then
    echo "virt-what installed"
  else
    echo "virt-what installing"
    apt-get -y install virt-what
  fi
  if dpkg -l | grep -Eqi "net-tools";then
    echo "net-tools installed"
  else
    echo "net-tools installing"
    apt-get -y install net-tools
  fi
else
  echo "This release is not supported."
  exit
fi
