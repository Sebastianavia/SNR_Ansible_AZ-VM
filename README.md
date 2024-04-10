## How to use ansible

#### Introduction:
This repository contains a URL to deploy a virtual machine on Azure using Terraform and configure it to play Mario Bros through a Docker container. Ansible is used to automate the installation and configuration process.

####  Prerequisites:
- Microsoft Azure account
- GitHub account with access to Code Spaces
- Basic knowledge of Terraform, Ansible, and Docker



#### Project Description:

> Step 1.

Using Terraform, create a virtual machine in Azure with SSH accessibility. Additionally, configure the virtual machine to require a username and password for access.

If you're unsure how to proceed, you can follow this guide.

[VM-modular-Terraform-AZ](https://github.com/Sebastianavia/VM-modular-Terraform-AZ.git)

------------


You should create something like this.
![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/e0375b3f-5f59-4d9b-857d-8b0d61a0386a)



------------


> Step 2

Open your GitHub code space, and follow these steps to install Ansible.
1). 

    sudo apt update

2).

	sudo apt install software-properties-common

3).

	sudo add-apt-repository --yes --update ppa:ansible/ansible

4).

	sudo apt install ansible

##### Installation Guide:    [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html)

------------


Ansible is an IT automation tool that enables the automation of configuration, deployment, and management tasks of systems. With Ansible, you can define and execute "playbooks," which specify steps to configure and manage servers and applications consistently and repeatedly.

["I want to know more."](https://www.ansible.com)

For more information 
> Step 3


The corresponding files are created to ensure their proper functioning. In this case, you will find the files in this repository.

------------


![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/9123f365-edc7-404c-b165-f56bb6e6c482)



------------

Mainly, you should consider the following:

1- In the hosts.ini file, the connection to the VM will be established with the IP, username, and password.

2- In playbooks, we install Docker and run it.

3- In roles, we download dependencies and the environment for Docker's proper functioning and execute the Mario Bros image.

> Step 4

Execute the playbook install_docker.yml located in the playbooks folder to install Docker on the system. Ensure that Ansible is installed and configured correctly before proceeding.

	ansible-playbook -i inventory/hosts.ini playbooks/install_docker.yml



To run the container, execute:

	ansible-playbook -i inventory/hosts.ini playbooks/run_container.yml



> Step 5

Then, we open Azure, access our VM, and configure a rule that allows, through the VM's IP and a specified port, to open in our browser the Docker image we installed.

------------


First, we will navigate to the settings of the VM uploaded on Azure, then to the network settings section,  create port rule and inbound port rule.
![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/2396f0c2-bee6-480d-800e-53eea659f963)


------


![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/4a1c4502-af13-4501-8a72-5e0472980c37)


------
------
> Step 6

Finally, enter the VM's IP along with the established port to access via the internet: Example 52.179.124.224:6034. You can now access and play Mario.
![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/16cab070-2411-42d7-a2e1-e898828727fa)


------

![image](https://github.com/Sebastianavia/SNR_Ansible_AZ-VM/assets/71205906/ff8d456f-995c-49f4-9aa0-2878a7689aee)


------



