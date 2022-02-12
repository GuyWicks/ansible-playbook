---
hide:
  - navigation
  - toc
---
# Welcome

[**Ansible Playbook on Github Pages**](https://guywicks.github.io/ansible-playbook/)

Scripts and recipes for deploying cloud infrastructure via Ansible and Terraform (with a bit of shell scripting just for fun)

Currently based on the [Oracle Cloud Free Tier](https://www.oracle.com/uk/cloud/free/) services. In the future we'll try to get examples on some other cloud platforms.

> Note: This documentation is very much work in progress. Even setting up mkdocs in a way I like is still ongoing.  Pages *WILL* move.

## Repository structure

* [Terraform](./Terraform/) - Provision the infrastructure
* [Post provisioning](./Build/) - Initial server OS setup scripts
* [Ansible](./Ansible/) - Software configuration
* [Docker](./Docker/) - Docker container scripts

## Current status

### Terraform Phase:

- [x] Terraform basic configuration (DF)
- [x] Implement variables (DF)
- [ ] Refactoring (DF)
- [ ] Test on other providers (GW)
- [ ] Documentation (DF/GW)
- [ ] Implement post provision scripting (DF)

### Build Phase: Post Provisioning

- [ ] Networking
    * [x] IPTABLES
    * [ ] 
    * [ ] 
- [ ] Native software
    * [x] NGINX install
    * [ ] NGINX base config

### Docker

Not started work on this yet.

## ToDo

- On the 'welcome page', get the subsections to work.
