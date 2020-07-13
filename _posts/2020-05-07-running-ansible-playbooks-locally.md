---
title: "Running Ansible playbooks locally"
published: true
---

In this post I'm going to cover how to run Ansible playbooks on your workstation. This is handy for carrying out a number of tasks on a local workstation.

For the below example we'll create a sample playbook that checks for system updates. 

Sample:

``` yaml
# Test playbook for blog post
- name: Check for update via DNF
  hosts: "localhost"
  tasks:
  
  - name: "SNF check for update"
    shell: "sudo dnf -y update && sudo dnf -y upgrade
    register: "output"
    
  - debug: var=output.stdout_lines
```

To then run this in your terminal you will run the following command:

<img src="https://raw.githubusercontent.com/gzuckerman/personal-website/master/imgs/terminal-example.svg" align="centre" alt="Terminal Window" width="80%" height="80%"/>
