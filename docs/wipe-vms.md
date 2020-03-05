**Name:** Wipe VM

**Description:**  

**Job Type:**  Run

**Inventory:**  localhost-inventory

**Project:**  openshift-ansible-tower

**Playbook:** vmware_tasks/infrastructure-delete-vmware-virtual-machine.yml

**Credentials:** server-credentials

**Options:**  

**Extra Variables**
```
vm_name: "virtual machine name"
vcenter_cluster: "yourcluster"
vmware_datacenter: Datacenter
ansible_python_interpreter: /usr/bin/python3
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
