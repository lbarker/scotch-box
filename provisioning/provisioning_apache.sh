echo -e "\n--- Copying Virtual Hosts files to /etc/apache2/sites-available ---\n"
cp /tmp/website_one.dev.conf /etc/apache2/sites-available/website_one.dev.conf
cp /tmp/website_two.dev.conf /etc/apache2/sites-available/website_two.dev.conf


echo -e "\n--- Disabling Default Virtual Host in ScotchBox (and all other vhosts) ---\n"
find /etc/apache2/sites-enabled/ -type l -exec rm "{}" \;

# echo -e "\n--- Enabling Virtual Hosts for Laravel Development---\n"
# a2ensite xyz_laravel_sites.conf

echo -e "\n--- Enabling Virtual Hosts for Old Sites ---\n"
a2ensite website_one.dev.conf
a2ensite website_two.dev.conf

echo -e "\n--- Restarting Apache ---\n"
service apache2 restart > /dev/null 2>&1