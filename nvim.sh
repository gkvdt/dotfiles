#! /usr/bin/bash
read -s -p 'Password:' password 
sleep 1
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz && tar -xvf nvim-linux64.tar.gz

sleep 1

echo $password | sudo -S mv nvim-linux64 /opt 
sleep 1
echo $password | sudo ln -s /opt/nvim-linux64/bin/nvim /usr/bin

sleep 1

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
