#!/bin/bash
sed -i '/\/var\/log\/messages/s/^/#/' /etc/rsyslog.conf
sed -i '55i\*.none /var/log/messages' /etc/rsyslog.conf
systemctl restart rsyslog
systemctl status rsyslog
