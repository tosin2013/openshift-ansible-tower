**Name:** Configure Helper Node  

**Description:**  

**Job Type:**  Run

**Inventory:**  helpernode-1

**Project:**  openshift-ansible-tower

**Playbook:** ocp4/configure-helper-node.yml

**Credentials:** helpernode-creds

**Options:**  
- [x] Enable Privilege Escalation

**Extra Variables**
```
disk: sda
helper:
  name: helper
  ipaddr: 192.168.1.19
  networkifacename: ens192
dns:
  domain: example.com
  clusterid: ocp4
  forwarder1: 8.8.8.8
  forwarder2: 8.8.4.4
dhcp:
  router: 192.168.1.1
  bcast: 192.168.1.255
  netmask: 255.255.255.0
  poolstart: 192.168.1.10
  poolend: 192.168.1.30
  ipid: 192.168.1.0
  netmaskid: 255.255.255.0
bootstrap:
  name: bootstrap
  ipaddr: 192.168.1.20
  macaddr: '52:54:00:60:72:67'
masters:
  - name: master0
    ipaddr: 192.168.1.21
    macaddr: '52:54:00:e7:9d:67'
  - name: master1
    ipaddr: 192.168.1.22
    macaddr: '52:54:00:80:16:23'
  - name: master2
    ipaddr: 192.168.1.23
    macaddr: '52:54:00:d5:1c:39'
workers:
  - name: worker0
    ipaddr: 192.168.1.24
    macaddr: '52:54:00:f4:26:a1'
  - name: worker1
    ipaddr: 192.168.1.25
    macaddr: '52:54:00:82:90:00'
  - name: worker2
    ipaddr: 192.168.1.26
    macaddr: '52:54:00:8e:10:34'
force_ocp_download: false
ocp_bios: >-
  https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/4.3/4.3.0/rhcos-4.3.0-x86_64-metal.raw.gz
ocp_initramfs: >-
  https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/4.3/4.3.0/rhcos-4.3.0-x86_64-installer-initramfs.img
ocp_install_kernel: >-
  https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/4.3/4.3.0/rhcos-4.3.0-x86_64-installer-kernel
ocp_client: >-
  https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.3.0/openshift-client-linux-4.3.0.tar.gz
ocp_installer: >-
  https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.3.0/openshift-install-linux-4.3.0.tar.gz
```

**Survey Menu**  

Prompt:  |   Enter RHEL Username  
--|--
Description:  |  
Answer Variable Name:  |  rhel_username
Answer Type:   |  
Default Answer: | rhel_username


Prompt: | Enter RHEL Password  
--|--
Description:  |   
Answer Variable Name:  | rhel_password  
Answer Type: Password  |  
Default Answer: changeme  |  

Prompt:| Would you like to use static ips?  
--|--
Description:  |
Answer Variable Name: |staticips  
Answer Type: | Multiple Choice (single select)  
OPTIONS:  | - true  
        | - false  
Default Answer: | false


Prompt: |  Would you like to configure DNS?  
--|--  
Description: |
Answer Variable Name:  | configuredns  
Answer Type: Multiple Choice (single select)   
Options: |- true
        |  - false  
Default Answer: |false  

Prompt: | Would you like to configure haproxy?  
--|--
Description: |
Answer Variable Name: | configure_haproxy  
Answer Type: | Multiple Choice (single select)   
Options: |- true  
| - false  
Default Answer: | false  

Prompt: |  Would you like to configure nfs provisioner?
--|--
Description: |
Answer Variable Name: | configure_nfs_provisioner  
Answer Type: | Multiple Choice (single select)   
Options: |- true  
 | - false  
Default Answer: | false  
