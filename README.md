# automation
Scripts to automate the configuration

* To clone CMS from IOI2019 repo and install:

<code><ansible-playbook playbooks/init.yml -i worker</code>

* To propogate cms.conf to CMS servers and worker machines:

<code>ansible-playbook playbooks/config/conf-copy-server.yml -i server</code>

<code>ansible-playbook playbooks/config/conf-copy-worker.yml -i worker</code>
