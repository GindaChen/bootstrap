# Install to support add-repo ppa:deadsnakes/ppa and install python3.6 for development
sudo apt update -y
sudo apt install python-software-properties -y
sudo apt install software-properties-common -y
sudo add-repository ppa:deadsnakes/ppa -y
sudo apt update -y


# Install dependencies
sudo apt -y install linux-modules-extra-$(uname -r)
sudo apt -y install curl git docker.io
sudo apt -y install cgroup-tools cgroup-bin
sudo apt -y install python2.7-dev python-pip python3-pip
service docker restart


# python (2+3)
pip install netifaces rethinkdb tornado
pip3 install boto3

# Install dev dependencies 
sudo apt -y install python3.6 python3.7
python3.6 -m pip install pandas requests jupyter
python3.7 -m pip install pandas requests jupyter

# go 1.12.5
wget -q -O /tmp/go1.12.5.linux-amd64.tar.gz https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.12.5.linux-amd64.tar.gz
ln -s /usr/local/go/bin/go /usr/bin/go

# disable auto updates
sudo apt-get -y remove unattended-upgrades

# Additional Dependencies
# This one sometimes will take a long time with message:
# """
# Will not try to make an initrd.
# : Unable to find an initial ram disk that I know how to handle.
# """
# echo "The following step usually takes some time on Cloudlab. You can install the following one by hand."
# echo "sudo apt -y install linux-image-extra-virtual"
sudo apt -y install linux-image-extra-virtual


# Finally - Install oh-my-bash to switch shell.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

