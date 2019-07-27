**_admin_contest_hosts_** playbook allows to: 

restart contestant machines by calling:
'ansible-playbook admin_contest_hosts --tags "reboot" -i hosts_stage'


open a browser with necessary website:
'ansible-playbook admin_contest_hosts --tags "browser" -i hosts_stage'


