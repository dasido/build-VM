
# DevOps-Home-Assignment
## Introduction
This is a home assignment I received for a DevOps position, the assignment is to create a sort of a pipeline for deployment using Git, Jenkins & Apache.

## Motivation
I am a 4th year Software Engineering student and I took this project in purpose to learn new technologies by "getting my hands dirty" with dealing with a real problem that I could encounter in the industry.

## Project status
I have successfully managed to build virtual machines using Vagrant, a technology I discovered after doing some research about the project.

Vagrant is responsible for setting up the VirtualBox VMs with a pre-configured file you deploy it with (inside Vagrantfile).

The deploy.sh file is already included with the Vagrantfile, deploy.sh is responsible for downloading and installing the required packages.

## Tech/framework used
When I first got this assignment I have started looking for technologies to simplify the deployment of the virtual machines, and I have come across a tool named Vagrant. Vagrant is a tool for providing and managing virtual machine environments easily.

- [HashiCorp Vagrant](https://www.vagrantup.com/)
- [Apache](https://httpd.apache.org/)
- [Git](https://git-scm.com/)
- [Jenkins](https://www.jenkins.io/)

## Installation
### **Prerequisite**
Before getting started, you'll need the following installed:
- [HashiCorp Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

### **Setting up**
1. Download the tar.gz file and extract build-vm folder to a a directory of your choice.
2. Open the directory you've chosen and run the following command:
   `vagrant up`
3. In order for us to access the VM, we will need to run the following:
   `vagrant ssh`
4. After running the virtual machine, get into the `host` directory using the `cd host`.
   - Inside, you'll find a deploy.sh file which is responsible for downloading and installing the needed packages for this project.
5. Run `chmod +x deploy.sh`, making deploy.sh executable.
6. Execute the deploy.sh file with `sudo sh deploy.sh` and wait for it to finish.

After deploy.sh finishes downloading and installing the required packages, we'll have add the following firewall exclusions:
`sudo firewall-cmd --permanent --add-service=http`

`sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp`

`sudo firewall-cmd --reload`

<hr />

To retrieve the address we'll have to run the following:

`ip addr show eth1`

There, you'll find the correct IP address to access the webserver.

Like so:
![example-pic](https://i.imgur.com/WWBHQsH.png)
**inet** shows `172.28.128.22`, that is the address needed to access the Apache server.

To access the Jenkins landing page, we need to add port `8888` to the same IP.

Like so: `172.28.128.22:8888`

#### //
