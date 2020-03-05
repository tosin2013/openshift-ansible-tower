**Name:** Push OpenShift ISOs to datastore

**Description:**

**Job Type:**  Run

**Inventory:**  localhost-inventory

**Project:**  openshift-ansible-tower

**Playbook:** ocp4/push-nodes-iso-to-datastore.yml

**Credentials:** server-credentials

**Options:**
- [x] Enable Privilege Escalation

**Extra Variables**
```
---
webserver_url: 'http://webserverip:8080/install'
datacenter: YourDataCenter
datastore: YourDataStore
folder_name: your-destination-folder
vm_validate_certs: 'no'
dns:
  domain: tosins-tower-demo.com
  clusterid: ocp4
bootstrap:
  - file_name: 'bootstrap.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
masters:
  - file_name: 'master0.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
  - file_name: 'master1.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
  - file_name: 'master2.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
workers:
  - file_name: 'worker0.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
  - file_name: 'worker1.{{ dns.clusterid }}.{{ dns.domain }}.iso'
    file_sha: 9999
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
