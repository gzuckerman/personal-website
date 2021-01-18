---
title: "Kör Ansible-spelböcker lokalt"
published: true
---

I det här inlägget ska jag täcka hur man kör Ansible-spelböcker på din arbetsstation. Detta är praktiskt för att utföra ett antal uppgifter på en lokal arbetsstation.

För exemplet nedan skapar vi ett exempel på en spelbok som söker efter systemuppdateringar.

Prov:

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

För att sedan köra detta i din terminal kommer du att köra följande kommando:

<img src="https://raw.githubusercontent.com/gzuckerman/personal-website/master/imgs/terminal-example.svg" align="centre" alt="Terminal Window" width="80%" height="80%"/>
