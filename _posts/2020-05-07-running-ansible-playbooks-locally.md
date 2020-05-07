---
title: "Running Ansible playbooks locally"
published: true
---

In this post I'm going to cover how to run Ansible playbooks on your workstation. This is handy for carrying out a number of tasks on a local workstation.

For the below example we'll create a sample playbook that checks for system updates. 

Sample:

![alt text](https://raw.githubusercontent.com/gzuckerman/personal-website/master/imgs/playbook-example.svg "Ansible sample")

```yaml
---
#Test playbook for blog post
- name: Check for update via dnf
  hosts: "localhost"
  tasks:
  
  - name: "DNF check for update"
    shell: "dnf -y upgrade && dnf -y update"
    register: "output"
    
  - debug: var=output.stdout_lines
```
To then run this in your terminal you will run the following command:

```console
[gzuckerman@optiplex ~]$ sudo ansible-playbook sample-playbook.yml

PLAY [Check for update via dnf] *****************************************************************

TASK [Gathering Facts] **************************************************************************
ok: [localhost]

TASK [DNF check for update] *********************************************************************
changed: [localhost]

TASK [debug] ************************************************************************************
ok: [localhost] => {
    "output.stdout_lines": [
        "Updating Subscription Management repositories.",
        "Last metadata expiration check: 0:41:55 ago on Thu 07 May 2020 09:21:10 BST.",
        "Dependencies resolved.",
        "Nothing to do.",
        "Complete!",
        "Updating Subscription Management repositories.",
        "Last metadata expiration check: 0:41:58 ago on Thu 07 May 2020 09:21:10 BST.",
        "Dependencies resolved.",
        "Nothing to do.",
        "Complete!"
    ]
}

PLAY RECAP **************************************************************************************
localhost : ok=3    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

[gzuckerman@optiplex ~]$

```
