#! /usr/bin/bash
RAND=$(date +%s)

[ -d "~/.fonts" ] && mv ~/.fonts ~/.fonts.old$RAND
[ -d "~/.config/i3" ] && mv ~/.config/i3 ~/.config/i3.old$RAND
[ -d "~/.config/polybar" ] && mv ~/.config/polybar ~/.config/polybar.old$RAND
# [ -d "~/.vim" ] && mv ~/.vim ~/.vim.old$RAND
[ -f "~/.vimrc" ] && mv ~/.vimrc ~/.vimrc.old$RAND
[ -d "~/.config/kitty" ] && mv ~/.config/kitty ~/.config/kitty.old$RAND
[ -d "~/.config/nvim" ] && mv ~/.config/nvim ~/.config/nvim.old$RAND

sleep 1
ln -s ~/dotfiles/.fonts ~/
ln -s ~/dotfiles/i3 ~/.config/
ln -s ~/dotfiles/polybar ~/.config/
ln -s ~/dotfiles/.vimrc ~/
# ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/kitty ~/.config/
ln -s ~/dotfiles/nvim ~/.config/

sleep 1 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 
sleep 1 
echo "source ~/dotfiles/shellrc" >> .zshrc
echo "source ~/dotfiles/shellrc" >> .bashrc