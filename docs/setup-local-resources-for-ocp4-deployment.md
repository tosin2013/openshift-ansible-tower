**Name:** Setup Local Resources For OCP 4 Deployment

**Description:**  

**Job Type:**  Run

**Inventory:**  helpernode-1

**Project:**  ocp4-vsphere-upi-automation

**Playbook:** install.yml

**Credentials:** helpernode-creds

**Options:**  
- [x] Enable Privilege Escalation

**Extra Variables**
```
---
hostname: all
# To clean directory set to true
# clean: true
config:
  baseDomain: example.com
  clusterName: ocp4
  pullSecret: {your-pull-secert}
vmware_datacenter: YourDataCenter
vmware_datastore: YourDataStore
templateName: rhcos-4.3.0-x86_64-vmware
download:
  openshiftClient: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.3.0.tar.gz
  openshiftInstall: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux-4.3.0.tar.gz
  govc: >-
    https://github.com/vmware/govmomi/releases/download/v0.22.1/govc_linux_amd64.gz
  ova: >-
    https://mirror.openshift.com/pub/openshift-v4/x86_64/dependencies/rhcos/latest/latest/rhcos-4.3.0-x86_64-vmware.ova
ova_sha: 9999999
ntp_server: rhel.pool.ntp.org
dns_server: 192.168.1.19
configure_static_ips: false
gateway: 192.168.1.1
cidr: 24
interface_name: ens192
install_device: sda
bootstrap:
  name: bootstrap
  ipaddr: 192.168.1.20
  macaddr: '52:54:00:60:72:67'
  ignHttpLocation: 'http://192.168.1.160:8080/ignition/bootstrap.ign'
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
url_ignition_file: http://192.168.1.160:8080/ignition
download_url: https://raw.githubusercontent.com/ashcrow/filetranspiler/master/filetranspile
bios_image: http://192.168.1.160:8080/images/bios.raw.gz
append_url: http://192.168.1.160:8080/ignition
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
