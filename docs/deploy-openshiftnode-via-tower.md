# WORKFLOW
**Name:** Deploy OpenShift node via Tower - SITE

**Description:**  Deploy helpernode and configure packages via tower and deploy OpenShift


**Inventory:**

**Project:**  openshift-ansible-tower

**Limit:**

**SCM Branch:**

**Labels:**  

**Options:**  

**Extra Variables**
```
file_sha: 9999999
file_name: your-helpernode.iso
iso_name: your-helpernode.iso
iso_path_loc: '[YourDataStore] iso/your-helpernode.iso'
download:
  govc: >-
    https://github.com/vmware/govmomi/releases/download/v0.22.1/govc_linux_amd64.gz
  openshiftClient: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.3.5.tar.gz
  openshiftInstall: >-
    https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux-4.3.5.tar.gz
  ova: >-
    https://mirror.openshift.com/pub/openshift-v4/x86_64/dependencies/rhcos/latest/latest/rhcos-4.3.0-x86_64-vmware.ova
#download_url: 'https://raw.githubusercontent.com/ashcrow/filetranspiler/master/filetranspile' #Test On RHEL8
download_url: https://raw.githubusercontent.com/ashcrow/filetranspiler/1.1.0/filetranspile #RHEL 7
bootstrap:
  ignHttpLocation: 'http://192.168.1.160:8080/ignition/bootstrap.ign'
  ipaddr: 192.168.1.10
  macaddr: '00:1c:14'
  name: bootstrap
cidr: 24
config:
  baseDomain: example.com
  clusterName: ocp4
  pullSecret: '{}'
configure_static_ips: true
use_custom_mac: true
gateway: 192.168.1.1
hostname: all
install_device: sda
interface_name: ens192
masters:
  - name: master0
    ipaddr: 192.168.1.11
    macaddr: '00:1c:14'
  - name: master1
    ipaddr: 192.168.1.12
    macaddr: '00:1c:14'
  - name: master2
    ipaddr: 192.168.1.13
    macaddr: '00:1c:14'
vmware_datacenter: Datacenter
vmware_datastore: YourDataStore
vmware_network: YourVMNetwork
workers:
  - name: worker0
    ipaddr: 192.168.1.14
    macaddr: '00:1c:14'
  - name: worker1
    ipaddr: 192.168.1.15
    macaddr: '00:1c:14'
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

Prompt: | Enter your vSphere cluster name
--|--
Description:  | This will be used to define the cluster your vm deploys to.
Answer Variable Name:  | vcenter_cluster  
Answer Type:  | Text  
Default Answer: | clustername

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
Answer Type:  | Password  
Default Answer: |changeme    
