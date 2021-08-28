# Setup script for Jartemis VM's

setup () {
    yum -y install epel-release
    yum -y update && yum -y upgrade
    yum -y install ruby wget unzip nano neofetch git qemu-guest-agent nc
    yum -y groupinstall "Development Tools"

    wget https://github.com/busyloop/lolcat/archive/master.zip
    unzip master.zip
    cd lolcat-master/bin
    gem install lolcat

    wget https://raw.githubusercontent.com/JoenneSpreuwers/Jartemis-VM-Setup/main/mymotd.sh && wget https://raw.githubusercontent.com/JoenneSpreuwers/Jartemis-VM-Setup/main/.bashrc
    sudo mv mymotd.sh /etc/profile.d/mymotd.sh
    sudo mv .bashrc /root/.bashrc

    sudo curl -s https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch 8 -o /usr/bin/neofetch && neofetch --disable title

    mkdir /root/.ssh
    echo "" > /root/.ssh/authorized_keys

    sudo systemctl stop firewalld
    sudo systemctl disable firewalld
    sudo systemctl mask --now firewalld
    
    sudo systemctl enable qemu-guest-agent
    sudo systemctl start qemu-guest-agent
    exit
}

read -p "---------------------------------------------
Welcome to the setup script for Jartemis VM's
---------------------------------------------
This script will install lolcat to output gay
terminals (and other stuff)
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
fi
