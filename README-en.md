# KeepMyGoogleVoice

[Chinese Version](https://github.com/uselibrary/KeepMyGoogleVoice/blob/master/README.md)

KeepMyGoogleVoice is a simple Python script to automatically send text messages to cloudflare to keep Google Voice alive. By default, a text message will be sent to  `8336721001` to query `cloudflare.com`'s IP.
If you want to modify it, please change the `phoneNumber` and `text` contents in `/root/gv.py` after executing this script.



Supported: Debian 9/Ubuntu 16.04+/CentOS7  (CentOS 7 is not recommended, there may be compatibility issues.)

If you can't log in Google Voice by any means, especially when the feedback likes  `google evoice.util.LoginError`, please go to https://accounts.google.com/DisplayUnlockCaptcha to check if security verification is enabled.



### One-Click Script, Google account and password is needed.



```
wget --no-check-certificate -O gv.sh https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.sh && chmod +x gv.sh && bash gv.sh
```

After installed, please input  you account and password into `/root/gv.py`, the specific location is as follows：

```
voice.login(email="xxx@gmail.com", passwd="xxx")
```



### Only see this when One-Click Script does not work.



If the One-Click Script cannot be executed, you can install it manually. Execute the following command, input the Google account and password manually into gv.py. And set it to be executed once a month through crontab.


For CentOS 7
```
yum -y install epel-release
yum -y install python36
yum -y install python36-setuptools
easy_install-3.6 pip
pip3 install googlevoice
wget --no-check-certificate -O gv.py https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.py && chmod +x gv.py
```
For Debian 9/Ubuntu 16.04+
```
apt install python3
apt install python3-pip
pip3 install googlevoice
wget --no-check-certificate -O gv.py https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.py && chmod +x gv.py
```


