# 把短信提交到iserver，再由iserver发送出去
# 先安装php5-curl
apt-get install php5-curl


# 调用之前对变量赋值
$url = "http://182.92.195.0:8080/"; # iserver地址，要改成实际可用的值
$prefix = "[验证码Cert Code:]"; # 认证码的前缀
$sms = "134567"; # 认证码
$postfix = "[by:紫光软件]"; # 认证码后缀
$phone = "18833500052"; # 接收短信的手机号

# 调用sms2iserver.php
include "sms2iserver.php";

# 检查$httpcode 201 - sucuess  500 - server error  0 - no response
