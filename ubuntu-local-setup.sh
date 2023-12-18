#!/bin/bash

# A script to install and configure nginx webserver

if (curl --version >> infra.log)
then
  echo "curl already installed"
else
  echo "installing curl"
  sudo apt install -y curl
fi

if (apt list openssh-server | grep installed >> infra.log)
then
  echo "openssh-server already installed"
else
  echo "installing openssh-server"
  sudo apt install -y openssh-server
fi

if (git --version >> infra.log)
then
  echo "git already installed"
else
  echo "installing git"
  sudo apt install -y git
fi

if (htop --version >> infra.log)
then
  echo "htop already installed"
else
  echo "installing htop"
  sudo apt install -y htop
fi

if (code --version >> infra.log)
then
  echo "code already installed"
else
  echo "installing code"
  sudo snap install --classic code
fi

if (stat $HOME/.ssh/id_ed25519)
then
  echo "ssh key already exists"
else
  echo  "creating ssh key pair"
  ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519" -N '' <<< y
fi

if (git config --get --global user.email | grep 'thecoolfoe11@gmail.com')
then
  echo "git config email already set to thecoolfoe11@gmail.com"
else
  echo "setting git user.email to thecoolfoe11@gmail.com"
  git config --global user.email "thecoolfoe11@gmail.com"
fi

if (git config --get --global user.name | grep 'Joseph Hernandez')
then
  echo "git config username already set to Joseph Hernandez"
else
  echo "setting username to Joseph Hernandez"
  git config --global user.name "Joseph Hernandez"
fi

# install hypervisor (multipass)
if (multipass --version >> infra.log)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap install multipass
  sleep 5
fi