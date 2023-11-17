#!/bin/bash

# A script to install and configure nginx webserver

if (which nginx >> infra.log)
then
  echo "nginx already installed"
else
  echo "installing nginx"
  sudo apt install -y nginx
fi

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