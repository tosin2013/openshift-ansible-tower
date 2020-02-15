# Ansible tower Playbooks for Openshift 4.x Deployment


## Troubleshooting
**if ansible roles fail to install dusing sync**
```
cd /var/lib/awx/projects/${Project_Directory}
ansible-galaxy install -r roles/requirements.yml
```
