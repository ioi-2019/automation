**_admin_contest_hosts_** playbook allows to: 

Restart contestant machines by calling:

<code>ansible-playbook admin_contest_hosts --tags "reboot" -i hosts_stage</code>

Open a browser with necessary website:

<code>ansible-playbook admin_contest_hosts --tags "browser" -i hosts_stage</code>

Lock/unlock a contestant laptop using i3lock service:

<code>ansible-playbook admin_contest_hosts --tags "lock"(unlock) -i hosts_stage</code>


_Note: Ensure that in ansible.cfg file "host_key_checking = False" is uncommented. Otherwise, you'll be asked to confirm all contestant hosts' SSH fingerprints._

_Also, you need to perform "xhost +" to allow remote hosts start GUI applications (like browser or screen locker) on contestant machines. Running this command from console will permit it only for the current session: for the permanent access, add this command to /etc/profile._
