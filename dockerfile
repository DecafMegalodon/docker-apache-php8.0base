from ubuntu
run apt-get update; apt-get install -y apache2 gpg; rm -rf /var/lib/apt/lists/*

#This is *roughly* equivalent to run add-apt-repository ppa:ondrej/php
#And doesn't require a whole bunch of python packages to be installed
run echo "deb https://ppa.launchpadcontent.net/ondrej/php/ubuntu jammy main" >> /etc/apt/sources.list
run apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C

run apt-get update; DEBIAN_FRONTEND=noninteractive apt-get install -y php8.0 tzdata; rm -rf /var/lib/apt/lists/*
