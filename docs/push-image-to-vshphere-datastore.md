**Name:** Push Image to Vsphere datastore

**Description:**  

**Job Type:**  Run

**Inventory:**  ssh-ansible-tower

**Project:**  openshift-ansible-tower

**Playbook:** vmware_tasks/push-file-to-vsphere-datastore.yml

**Credentials:** server-credentials

**Options:**  
- [x] Enable Privilege Escalation

**Extra Variables**
```
---
webserver_url: "http://webserver-endpoint/builds"
file_name: helpernodeiso.iso
file_sha: 99999
datacenter: YourDataCenter
datastore: YourDataStore
folder_name: iso
vm_validate_certs: no
```

**Survey Menu**  

Prompt: | Enter vSphere Hostname
--|--
Description:  | This will be the target endpoint of the vSphere Cluster   
Answer Variable Name:  | vcenter_hostname  
Answer Type:  | Text  
Default Answer: | your-vsphere-endpoint    

Prompt: | Enter your vSphere username
--|--
Description:  | This username will be used to login to vSphere  
Answer Variable Name:  | vcenter_username  
Answer Type:  | Text  
Default Answer: | username    

Prompt:  |   Enter Your vSphere password
--|--
Description:  |  This will be the password used to access the vSphere cluster
Answer Variable Name:  |  vcenter_password
Answer Type:   | Password
Default Answer: | changeme
