***************************************************************************
Project Sentelligence - A Proof of Concept 
***************************************************************************

Description
==========================================

An IoT and Cloud infrastructure proof of concept project.

The aim of this project is to set a foundation for larger more impactful projects in the future. Currently we are exploring the capabilities of 
AWS IoT and how these technologies can solve real world problems. Once we establish a POC we hope to expand into other areas that may have a wide range 
of applications most notably with space based technologies. 

Architecture
=============
Basic overview of how it works.

.. image:: ./docs/arch.png
   :width: 600

Developer Env Setup
====================

Setup the developer env
-----------------------

1. Go to a command line terminal that uses unix like commands such as git bash or Mac CLI. Then create a directory on your filesystem that you would like to place the project in. 
Ex: /Documents/Projects/sentelligence.

2. Install the latest versions of VirtualBox (https://www.virtualbox.org/wiki/Downloads) and Vagrant (https://www.vagrantup.com/). Once these are installed go to your project 
directory and run 'vagrant --version' to make sure you have vagrant installed. Then install the Guest Additions by running 'vagrant plugin install vagrant-vbguest --plugin-version 0.21'. This plugin for 
VirtualBox allows you to do many things as a developer most importantly it allows you to sync your code changes with your VM.

3. Clone the project from git into your project directory. Then run 'git checkout develop'. To get the latest code run 'git pull'. You may need 
to create your own access token for the repo. See me about that or consult the GitHub docs on obtaining that.  

4. While in your project directory run 'vagrant up'. This will take a little bit as it is downloading and installing packages and setting up the virtual env. 
Once everything has successfully provisioned, run 'vagrant ssh' to get into your Vagrant VM. Cd to /vagrant/ to get access to the project code while in the vagrant env.  

5. After that you can use any IDE or code editor such as VS Code or IntelliJ to edit code on your host machine. The project folder on your host machine should be synced with the folder
on your guest VM in /vagrant. Any env specific tasks will be run while in Vagrant. Any git or Vagrant commands can be 
run outside of the Vagrant VM. Feel free to modify the Vagrantfile for personal needs. 

Webserver setup
-------------------

1. While in vagrant VM, cd to /vagrant/ansible. This is where all our CM lives. Run the playbook with the command 'ansible-playbook -i environments/web/ webapp.yml'. 

Test Setup
======================

Web Server
--------------------------

Run the web server using 'node /vagrant/web/app.js'. Visit http://192.168.50.100:3000 and you will see a message saying "Hello Sentelligence".


Future considerations
======================

In the future we hope to explore a wide range of technologies and domains. Some include:

- Satellite communications linked to the cloud (AWS or Google Cloud)
- Precision agriculture
- Space based technologies 

Resources & Other
==================

For more details see our project documentation. 