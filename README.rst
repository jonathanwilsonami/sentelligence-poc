***************************************************************************
Project Sentelligence - A Proof of Concept 
***************************************************************************

Description
==========================================
Basic explanation of this project...

Architecture
=============
Basic overview of how it works...

Developer Env Setup
====================
How to setup a devloper env...

1. Go to a command line terminal that uses unix like commands such as git bash or Mac CLI. Then create a directory on your filesystem that you would like to place the project in. 
Ex: /c/Users/<user-name>/Documents/Projects/sentelligence.

2. Install the latest versions of VirtualBox and Vagrant. Run 'vagrant --version' to make sure you have vagrant installed.

3. Clone the project from git into your project directory. Then run 'git checkout develop'. To get the latest code run 'git pull'. You may need 
to create your own acceess token for the repo.  

4. Cd to your project directory then run 'vagrant up'. Once everything has successfully provisioned run 'vagrant ssh' to get into your Vagrant VM. Cd to /vagrant/ to get 
access to the project code while in the vagrant env.  

5. After that you can use any IDE or code editor such as VS Code or IntelliJ to edit code. Any env specific tasks will be run while in Vagrant. Any git or Vagrant commands can be 
run outside of the Vagrant VM. 

Webserver Setup
-------------------

1. While in vagrant VM cd to /vagrant/ansible. Run the playbook with the command 'ansible-playbook web.yml'. 

Future considerations
======================
Where we intend to take the project into the future...

Resources & Other
==================