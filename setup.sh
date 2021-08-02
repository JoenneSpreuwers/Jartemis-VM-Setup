# Setup script for Jartemis VM's

setup () {
    yum -y install epel-release
    yum -y update && yum -y upgrade
    yum -y install ruby wget unzip nano neofetch

    wget https://github.com/busyloop/lolcat/archive/master.zip
    unzip master.zip
    cd lolcat-master/bin
    gem install lolcat
    echo "Test if lolcat works" | lolcat

    wget https://raw.githubusercontent.com/JoenneSpreuwers/Jartemis-VM-Setup/main/mymotd.sh && wget https://raw.githubusercontent.com/JoenneSpreuwers/Jartemis-VM-Setup/main/.bashrc
    sudo mv mymotd.sh /etc/profile.d/mymotd.sh
    sudo mv .bashrc /root/.bashrc

    mkdir /root/.ssh
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEmDX3ZRpSY9lio6cwWsqYUw7mU0oflODC+DooluAYxBSA4QY44IMCRsXLr95kcQQTsvCKuhH7aXA39vc1y9nkOovRgd6a8Mw9/u+VDkF+ggLdyPvPx+Z+BS7HlkuxhgwLbWGRyoqgnhzvDy9t+AsvKjlGlEEF3xTXz+9RcAV0bS3k5httNDGKAX6VyfbFyvGv/O2pem3luHaRoJFNrjSHmYHJ+VWvFoDXz4RLeFvctkmJ9UdLlYs/KB9hSgL1sYNVs3qhvJrXkUjZkIDZ1zhFyMKA0qhVtAkQzBSAA+O9mriVPvcSPRc9lfCUftkVm1qb8rOK2K6qTF0v/+1hnjGN root@jartemis-pfsense.local" > .ssh/authorized_keys

    exit
}

read -p "---------------------------------------------
Welcome to the setup script for Jartemis VM's
---------------------------------------------
This script will install lolcat to output gay
terminals
---------------------------------------------
Do you want to continue?
Y(es) / N(o)
---------------------------------------------
: " selection

if [[ -z $selection ]]; then
    clear && exit 1
elif [[ $selection == "Y" ]]; then
    setup
elif [[ $selection == "N" ]]; then
    clear && exit 1
<<<<<<< HEAD
fi
=======
fi
>>>>>>> 7d16ceec0063f2f3116c8a49887a5e5f83976dd0
