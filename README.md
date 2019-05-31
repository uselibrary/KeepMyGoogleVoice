# KeepMyGoogleVoice



KeepMyGoogleVoice是使用Python脚本自动发送短信给cloudflare来实现保活Google Voice。默认情况下，将发送一条短信到`8336721001`查询`baidu.com`的IP。如果你想修改，可以在执行完一键脚本后，更改`/root/gv.py`中的`phoneNumber`和`text`内容。

支持的系统版本：CentOS 7/Debain 9/Ubuntu 16.04+

执行此脚本后，对于CentOS 7将自动安装python和python-pip；对于Debain 9/Ubuntu 18.04+将自动安装python3和python3-pip。



### 一键脚本如下，安装过程中需要输入google账号和密码。

```
wget --no-check-certificate -O gv.sh https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.sh && chmod +x && bash gv.sh
```

完成安装后，手动将你的账号和密码输入到`/root/gv.py`中，具体位置如如下：

```
voice.login(email='xxxxx@gmail.com', passwd='xxxxx')
```





### 仅当一键脚本无法正常使用是才参考此项

如果上述一脚脚本无法执行，可以手动安装。执行以下命令，手动输入Google账号和密码，并通过crontab将其设置为每月执行一次。

```
wget --no-check-certificate -O gv.py https://raw.githubusercontent.com/uselibrary/KeepMyGoogleVoice/master/gv.py && chmod +x gv.py
```
