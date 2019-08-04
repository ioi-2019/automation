#!/bin/bash
set -xe

# Add the repo and install the agent
wget http://repo.zabbix.com/zabbix/4.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.2-1%2Bbionic_all.deb
sudo dpkg -i zabbix-release_4.2-1+bionic_all.deb
sudo apt update
sudo apt -y install zabbix-agent

# Clear the config and add the necessary parameters
sudo bash -c 'echo "
PidFile=/var/run/zabbix/zabbix_agentd.pid
LogFile=/var/log/zabbix/zabbix_agentd.log
LogFileSize=0
Server=172.30.20.99
Hostname=monitoringsrv
Include=/etc/zabbix/zabbix_agentd.d/*.conf
" > /etc/zabbix/zabbix_agentd.conf'

# Allow firewall (just in case) and restart the agent while adding to start-up
sudo ufw allow 10050/tcp
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent
