# Ansible tower Playbooks for Openshift 4.x Deployment

## Requirements
* iso build server
* Ansible Tower

## Deployment Steps via Ansible Tower
1. Ansible tower will deploy a helper node.
2. Ansible tower will create ignition files and static ips on helper helpernode
3. Ansible Tower will push OVA to remote site.
4. Ansible Tower will trigger an OVA install.
5. Ansible Tower will monitor the deployment of OpenShift.
6. Ansible Tower will delete the infrastructure if a failure occurs.
7. Ansible Tower will Approve the  certificates of the worker nodes once the master nodes are up.
8. Ansible Tower Will automate the storage configuration.
9. Ansible Tower will automate the authentication.

## Helper node deployment steps on VMWARE
1. Build Custom iso and post on webserver or push to vsphere
2. The custom iso will contain a kickstart file that has the static ips needed for the network.
3. Deploy the vm using the custom iso.
4. Configure vm with the Ansible helpernode role.
5. Configure the vm with the ignition files and static ips.
6. Push ignition files to web server directory

## Sync OVA files to remote site
1. Ansible tower will contain a playbook to sync ova images to each remote site to be used for OpenShift deployment.
2. Ansible tower will check the sha upon completion of sync.


## OpenShift 4.x Deployment to VMWARE
1. Validate connectivity to helpernode on remote site.
2. Validate ignition files on remote site.
3. Ansible tower will start the provisioning the environment with the ova and base64 config.
4. Ansible tower will monitor the deployment.
5. Ansible tower will alert user on deployment failure.
6. Ansible tower will rollback deployment or leave it running.
7. Ansible tower will automate the certification approval process of worker nodes once master nodes are active.
8. Ansible tower will configure Storage of OpenShift once Deployment is complete
9. Ansible tower will Automate the Authentication of the environment once deployment is complete.

## Validation Tests
1. Ansible tower can run a smoke test of system after a completed deployment.

## Glossary
* **iso build server** - will be used to build isos for the helper node. The iso build server will add kickstart files to the iso to be used for static ip addresses.

## Troubleshooting
**if ansible roles fail to install using sync**
```
cd /var/lib/awx/projects/${Project_Directory}
ansible-galaxy install -r roles/requirements.yml
```
