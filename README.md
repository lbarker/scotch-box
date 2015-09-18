A Customized Vagrant Lamp Stack using Scotch Box
==========
## What and Why
This is a customized version of Scotch Box. It utilizes a custom mount point, provisioning files, and mulitple virtual hosts files to enable mutliple development websites to exist within a single dev environment. 

NOTE: The IP address of this box is 192.168.33.11 (not 192.168.33.10)

## File Structure Setup
```
/Documents/htdocs/
	/websites
		/website_one
		/website_two
	/vagrant_vm
		/scotch_vagrant_box
			Vagrantfile
			/provisioning
				/website_one.dev.conf
				/website_two.dev.conf
		/another_vagrant_box
```
## Setup
1. Place website directories inside your Documents/htdocs/websites folder
2. Create Apache Virtual Hosts Files under the provisioning folder - website_name_dev.conf
3. Update your /etc/hosts file on local machine:
# servers on Vagrant Box VM
192.168.33.11	website_name_one.dev website_name_one.dev 

## Databases
You can also load a database on "vagrant up". Simple put a copy of your DATABASE.sql inside provisioning/databases/ folder. 

## Check out the official docs for the Scotch Box at: [box.scotch.io](https://box.scotch.io/)
