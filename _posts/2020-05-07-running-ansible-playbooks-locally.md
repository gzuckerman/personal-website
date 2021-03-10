---
title: "Run Ansible playbooks locally"
published: true
---

In this post, I'm going to cover how to run Ansible playbooks on your workstation. This is useful for performing a number of tasks on a local workstation.

For the example below, we create an example of a playbook that searches for system updates.

Sample:

``` yaml
# Test playbook for blog post
- name: Check for update via DNF
  hosts: "localhost"
  tasks:
  
  - name: "DNF check for update"
    shell: "sudo dnf -y upgrade && sudo dnf -y update
    register: "output"
    
  - debug: var=output.stdout_lines
```

To then run this in your terminal, you will run the following command:

``` shell

$ sudo ansible-playbook sample-playbook.yml

```
