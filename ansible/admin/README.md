**_admin_contest_hosts_** playbook allows to: 

restart contestant machines by calling:
'ansible-playbook admin_contest_hosts --tags "reboot" -i hosts_stage'


open a browser with necessary website:
'ansible-playbook admin_contest_hosts --tags "browser" -i hosts_stage'

_Note: Ensure that in ansible.cfg file "host_key_checking = False" is uncommented. Otherwise, you'll be asked to confirm all contestant hosts' SSH fingerprints._
