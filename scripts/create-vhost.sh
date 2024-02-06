#!/bin/bash
echo $PWD

echo "It is public folder(Y,n)"
read public_folder 
echo "Write host"
read host
if [ $host == '' ]
then
exit 
elif [ $public_folder == "Y" ] || [ $public_folder == "y" ]
 then
    echo 'it is public folder';
    sudo echo "<VirtualHost *:80>
    ServerName "${host}.local"
    DocumentRoot \"${PWD}\"
    <Directory \"${PWD}\">
        Options Indexes FollowSymLinks  
        AllowOverride All
        Order allow,deny
        Allow from all
    </Directory>
</VirtualHost>


" >> /opt/lampp/etc/extra/httpd-vhosts.conf

sudo echo "127.0.0.1 ${host}.local" >> /etc/hosts
sudo /opt/lampp/xampp restart


elif [ $public_folder == "n" ] || [ $public_folder == "n" ]
then
   
    sudo echo "<VirtualHost *:80>
    ServerName "${host}.local"
    DocumentRoot \"${PWD}/public\"
    <Directory \"${PWD}/pubic\">
        Options Indexes FollowSymLinks  
        AllowOverride All
        Order allow,deny
        Allow from all
    </Directory>
</VirtualHost>


" >> /opt/lampp/etc/extra/httpd-vhosts.conf

sudo echo "127.0.0.1 ${host}.local" >> /etc/hosts
sudo /opt/lampp/xampp restart


else
    echo 'exit'
    exit
fi
