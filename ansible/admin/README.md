**_admin_contest_hosts_** playbook allows to: 

* Restart contestant machines by calling:

<code>ansible-playbook admin_contest_hosts --tags "reboot" -i hosts_stage</code>

* Shutdown contestant machines by calling:

<code>ansible-playbook admin_contest_hosts --tags "shutdown" -i hosts_stage</code>

* Lock contestant laptops using i3lock service:

<code>ansible-playbook admin_contest_hosts --tags "lock"(unlock) -i hosts_stage</code>

* Open a browser with pre-defined page:

<code>ansible-playbook admin_contest_hosts --tags "browser" -i hosts_stage</code>

* Run a script located in roles/contestant/scripts/script.sh

<code>ansible-playbook admin_contest_hosts --tags "script" -i hosts_stage</code>


_Note: Ensure that in ansible.cfg file "host_key_checking = False" is uncommented. Otherwise, you'll be asked to confirm all contestant hosts' SSH fingerprints._

_Also, you need to perform "xhost +" to allow remote hosts start GUI applications (like browser or screen locker) on contestant machines. Running this command from console will permit it only for the current session: for the permanent access, add this command to /etc/profile._
