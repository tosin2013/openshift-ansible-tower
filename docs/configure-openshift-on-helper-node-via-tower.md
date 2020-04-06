**Name:** Configure Openshift on helper node  via tower

**Description:**  Part 2 of configuring helper node via tower. This will copy tgz untar it and setup openshift

**Job Type:**  Run

**Inventory:**  helpernode-1

**Project:**  ocp4-vsphere-upi-automation

**Playbook:** install-via-ansible-tower.yml

**Credentials:** helpernode-creds

**Options:**  
- [x] Enable Privilege Escalation

**Extra Variables**
```
working_dir: "/opt"
folder: "ocp4"
clean: true
append_url: 'http://192.168.1.10:8080/ignition'
bios_image: 'http://your.site.example.com/pub/ocp42/bios/bios.raw.gz'
bootstrap:
  ignHttpLocation: 'http://192.168.1.10:8080/ignition/bootstrap.ign'
  ipaddr: 192.168.1.20
  macaddr: '00:1c:14:57:19:88'
  name: bootstrap
cidr: 24
config:
  baseDomain: examplecom
  clusterName: ocp4
  pullSecret: '{}'
configure_static_ips: true
dns_server: 192.168.1.10
download:
  govc: >-
    https://github.com/vmware/govmomi/releases/download/v0.22.1/govc_linux_amd64.gz
  openshiftClient: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.3.8.tar.gz
  openshiftInstall: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux-4.3.8.tar.gz
  ova: >-
    https://mirror.openshift.com/pub/openshift-v4/x86_64/dependencies/rhcos/latest/latest/rhcos-4.3.0-x86_64-vmware.ova
#download_url: 'https://raw.githubusercontent.com/ashcrow/filetranspiler/master/filetranspile' #Test On RHEL8
download_url: https://raw.githubusercontent.com/ashcrow/filetranspiler/1.1.0/filetranspile #RHEL 7
gateway: 192.168.1.1
hostname: all
install_device: sda
interface_name: ens192
masters:
  - name: master0
    ipaddr: 192.168.1.21
    macaddr: 'changeme'
  - name: master1
    ipaddr: 192.168.1.22
    macaddr: 'changeme'
  - name: master2
    ipaddr: 192.168.1.23
    macaddr: 'changeme'
ntp_server: 0.rhel.pool.ntp.org
ova_sha: 999999999
templateName: rhcos-4.3.0-x86_64-vmware
url_ignition_file: 'http://192.168.1.10:8080/ignition'
vmware_datacenter:  YourDataCenter
vmware_datastore: YourDataStore
workers:
  - name: worker0
    ipaddr: 192.168.1.24
    macaddr: 'changeme'
  - name: worker1
    ipaddr: 192.168.1.25
    macaddr: 'changeme'
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
