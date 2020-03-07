**Name:** Wipe all OpenShift vms

**Description:**  

**Job Type:**  Run

**Inventory:**  localhost-inventory

**Project:**  openshift-ansible-tower

**Playbook:** vmware_tasks/remove-all-openshift-nodes.yml

**Credentials:** server-credentials

**Options:**  

**Extra Variables**
```
---
bootstrap_name: bootstrap
masters:
  - name: master0
  - name: master1
  - name: master2
workers:
  - name: worker0
  - name: worker1
  - name: worker2
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
