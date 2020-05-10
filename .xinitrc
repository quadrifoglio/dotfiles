compton &

sh /home/clement/.dotfiles/scripts/fehbg.sh &
sh /home/clement/.dotfiles/scripts/status.sh &

#sh /home/clement/.dotfiles/scripts/nvidia.sh

export PATH="$HOME/apps/bin:$HOME/.dotfiles/scripts:$PATH"

exec dwm
