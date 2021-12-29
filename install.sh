RAND=$(date +%s)
#! /usr/bin/bash
[ -d "/home/vdtgk/.fonts" ] && mv /home/vdtgk/.fonts /home/vdtgk/.fonts.old$RAND
[ -d "/home/vdtgk/.config/i3" ] && mv /home/vdtgk/.config/i3 /home/vdtgk/.config/i3.old$RAND
[ -d "/home/vdtgk/.config/polybar" ] && mv /home/vdtgk/.config/polybar /home/vdtgk/.config/polybar.old$RAND
[ -d "/home/vdtgk/.vim" ] && mv /home/vdtgk/.vim /home/vdtgk/.vim.old$RAND
[ -f "/home/vdtgk/.vimrc" ] && mv /home/vdtgk/.vimrc /home/vdtgk/.vimrc.old$RAND
[ -d "/home/vdtgk/.config/kitty" ] && mv /home/vdtgk/.config/kitty /home/vdtgk/.config/kitty.old$RAND

sleep 1
ln -s /home/vdtgk/config/.fonts /home/vdtgk/
ln -s /home/vdtgk/config/i3 /home/vdtgk/.config/
ln -s /home/vdtgk/config/polybar /home/vdtgk/.config/
ln -s /home/vdtgk/config/.vimrc /home/vdtgk/
ln -s /home/vdtgk/config/.vim /home/vdtgk/
ln -s /home/vdtgk/config/kitty /home/vdtgk/.config/
