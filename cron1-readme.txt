
另外，写循环的方式： while（） {do xxxx  sleep (600); }, 然后把这个程序保存为一个脚本，运行加上&，后台运行
非常简单 

1、用root权限登陆
2、 crontab -u jshao -e
3、加入要启动的命令，0 * * * * /crontab/sampling.sh (自己建立/crontab目录，加上sampling.sh命令)
4、重新启动service crond restart
5、OK

其他相关命令：
crontab-1 列出用户目前的crontab.
[root@test1 init.d]# crontab -e   让一个脚本自动定时运行，

[root@test1 init.d]# service crond stop  
[root@test1 init.d]# service crond start   启动定时服务

其他一些网页：
http://hi.baidu.com/sunboy_2050/item/c8b237103e04dd9798ce33cc

http://blog.csdn.net/shi1122/article/details/8733338

http://huoding.com/2013/01/30/225

http://fangyong2006.iteye.com/blog/1123797


如何 自动登录 ssh jennyshao@hcc-ps02.unl.edu  不用输入密码