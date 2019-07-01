# Automation scripts
Scripts to automate the CMS related maintenance and manage contestant machines.

*Note: secret keys and other important credentials shall be stored in provisioning server. Do not publish it to Git repo.*

## CMS Related:

### To clone CMS from IOI2019 repo and install:

- to worker machines:
<code>ansible-playbook install_cms_worker.yml -i workers_*stage*</code>
- to server machines:
<code>ansible-playbook install_cms_worker.yml -i servers_*stage*</code>

*Keep different inventories for development, testing and production(hosts_dev, hosts_test and hosts_prd, correspondingly).*

### TO provision the updated cms.conf

- to worker machines:
<code>ansible-playbook provision_worker_config.yml -i workers_*stage*</code>

- to server machines:
<code>ansible-playbook provision_server_config.yml -i servers_*stage*</code>

## Administration scripts

- Unlock and lock during the contests
--

- Enable/distable USB
--

- General : run any bash script on a host 
--

