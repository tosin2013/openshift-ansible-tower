**Name:** Deploy Virtual Machine on VMWARE

**Description:**  

**Job Type:**  Run

**Inventory:**  localhost-inventory

**Project:**  openshift-ansible-tower

**Playbook:** vmware_tasks/infrastructure-provision-vmware-virtual-machine.yml

**Credentials:** server-credentials

**Options:**  
- [x] Enable concurrent jobs

**Extra Variables**
```
---
---
vmware_datacenter: YourDataCenter
vmware_new_hostname: helpernodename
vmware_datastore: YourDataStore
vmware_folder: 'ocp4'
vmware_disk_size: 40
vmware_ram_mb: 4096
vm_cpu_count: 2
vm_core_per_cpu: 1
vmware_network: 'your-vm-network'
vmware_state: poweredon
iso_path_loc: '[datastore1] iso/yourisoname.iso'
vm_guest_id: 'rhel7_64Guest'
diskcount: "X"
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
