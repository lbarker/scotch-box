# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

	config.vm.box = "scotch/box"
	config.vm.network "private_network", ip: "192.168.33.11"
	config.vm.hostname = "scotchbox"
		# WE DON'T NEED THE DEFAULT MOUNT POINT
		# config.vm.synced_folder ".", "/var/www/public", :mount_options => ["dmode=777", "fmode=666"]

	# SETUP - MOUNT POINTS

		# mount vagrant_box directory for provisioning purposes
		config.vm.synced_folder ".", "/var/www/scotch_vagrant_box", :mount_options => ["dmode=777", "fmode=666"]

		# mount directory containing personal sites
		config.vm.synced_folder "~/Documents/htdocs/websites", "/var/www/websites", :mount_options => ["dmode=777", "fmode=666"]

	# SETUP - COPY FILES TO VM

		# Copy Apache Virtual Hosts Files to /tmp (provisioning script will later copy them to /etc/apache2/sites-available)
		config.vm.provision "file", source: "provisioning/website_one.dev.conf", destination: "/tmp/website_one.dev.conf"
		config.vm.provision "file", source: "provisioning/website_two.dev.conf", destination: "/tmp/website_two.dev.conf"

	# SETUP - PROVISIONING

		# Run shell script to complete provisioning
		config.vm.provision :shell, :path => "provisioning/provisioning_apache.sh"

		# if your using databases uncomment the following line
		#config.vm.provision :shell, :path => "provisioning/provisioning_database.sh"

		# favorite commonds loaded onto vm with this script
		#config.vm.provision :shell, :path => "provisioning/provisioning_extras.sh"

end
