#!/data/data/com.termux/files/usr/bin/bash

# basic
pkg install -y git zsh wget vim openssh 
git clone https://github.com/TREYWANGCQU/termux-ohmyzsh "$HOME/termux-ohmyzsh" 



# install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"
cp "$HOME/termux-ohmyzsh/zshrc.zsh-template" "$HOME/.zshrc"

# modify motd
cp -R "$HOME/termux-ohmyzsh/motd" "$PWD/"

# install zsh addons
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



# change shell to zsh
chsh -s zsh
rm -rf $HOME/termux-ohmyzsh

echo "oh-my-zsh install complete!\nChoose your color scheme now~"
$HOME/.termux/colors.sh

echo "Choose your font now~"
$HOME/.termux/fonts.sh

echo "Please restart Termux app..."

exit
