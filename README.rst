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

.. image:: https://github.com/jonwilami323/sentelligence-poc/blob/develop/docs/arch.PNG

Developer Env Setup
====================

Setup the developer env
-----------------------

1. Start by going to a command line terminal that uses unix like commands such as git bash or Mac CLI. Then create a directory on your filesystem that you would like to place the project in. 
Ex: /Documents/Projects/sentelligence.

2. Clone the project from git into your project directory. Then run 'git checkout develop' to checkout the develop branch. To get the latest code run 'git pull'. 

3. Install the latest versions of VirtualBox (https://www.virtualbox.org/wiki/Downloads) and Vagrant (https://www.vagrantup.com/). Once these are installed go to your project 
directory and run 'vagrant --version' to make sure you have vagrant installed. Then install the Guest Additions by running 'vagrant plugin install vagrant-vbguest --plugin-version 0.21'. 
You might be fine with just 'vagrant plugin install vagrant-vbguest' on a MAC using version 0.21 was to address a Windows bug. This plugin for VirtualBox allows you to do many things as a developer most importantly it allows you to 
sync your code changes with your VM. Lastly, for both Windows and Mac there is a security 
setting you need to address first. For Mac Google "VirtualBox Problems on macOS (Security & Access)". Follow these instructions. After this step you should not have to do this again unless 
you need to uninstall your VirtualBox.      

4. While in your project directory (the one with the Vagrantfile) run 'vagrant up'. This will take a little bit as it is downloading and installing packages and setting up the virtual env. 
To get into your Vagrant machine run 'vagrant ssh'. When you are in run "cd /vagrant" to get access to the project code while in the vagrant env. To shut down you can either go 
to the VirtualBox GUI to turn your box off or run "vagrant halt". This turns it off and saves your session. If you want to turn it back on again just run "vagrant ssh" again. 

5. After that you can use any IDE or text editor such as VS Code or IntelliJ to edit code on your host machine. The project folder on your host machine should be synced with the folder
on your guest VM in /vagrant. Any env specific tasks will be run while in Vagrant. Any git or Vagrant commands can be 
run outside of the Vagrant VM.  

Webserver setup
-------------------

1. While in vagrant VM you will see a directory /vagrant/ansible. This is where all our configuration managment lives. Run the playbook with the command 
'ansible-playbook -i environments/web/ /vagrant/ansible/webapp.yml'. Eventually the ansible files will be run on EC2. 

Test Setup
======================

Web Server
--------------------------

Run the web server using 'node /vagrant/web/server.js'. Visit http://192.168.50.100:3000 and you will see Sentelligence web app. 192.168.50.100 is just a private IP set up via Vagrant. 
Eventually this will live on an EC2 instance as well. But for now we will have it served locally on machine. This IP does not work on a MAC. Will fix that in the future.  


Future considerations
======================

In the future we hope to explore a wide range of technologies and domains. Some include:

- Satellite communications linked to the cloud (AWS or Google Cloud)
- Precision agriculture
- Space based technologies 

Resources & Other
==================

For more details see our project documentation. 
