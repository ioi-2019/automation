# Automation scripts
Scripts to automate the CMS related maintenance and manage contestant machines.

*Note: secret keys and other important credentials shall be stored in provisioning server. Do not publish it to Git repo.*

## CMS Related:

### To clone CMS from IOI2019 repo and install:

<code>ansible-playbook install_cms.yml -i hosts_*stage*</code>

_Keep different inventories for development, testing and production(hosts_dev, hosts_test and hosts_prd, correspondingly)._

_This playbook first updates and installs necessary packages. To skip this process for the next runs, use **--skip-tags "tag1,tag2"** parameter. To run the specific tag use **--tags "tagname"** syntax_. 

### To provision the updated cms.conf

<code>ansible-playbook provision_cms_config.yml -i hosts_*stage*</code>

### Ranking server

to cleanup and updating new images:
<code>ansible-playbook refresh_ranking_data.yml -i hosts_*stage*</code>

## Administration scripts

- Unlock and lock during the contests
--

- Enable/distable USB
--

- General : run any bash script on a host 
--

- To add a contestant user to contestant machines with contestant_manage playbook: 
      <code> ansible-playbook add_user.yml –extra-vars “username=contestant password=whatever admin=no action=create_user” </code>
      
- To add SSH keys of contestans to a server:
      <code> ansible-playbook -i inventory authorized_key.yml -u "$USER" -k </code>
 
 - To distribute key pair over contestant machines
      <code> ansible-playbook key_distribution.yml -i hosts_*stage* </code>
