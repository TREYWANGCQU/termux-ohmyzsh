#!/data/data/com.termux/files/usr/bin/bash

# basic
HOME="/home/reaticle"
sudo pacman -S git zsh wget vim openssh 
git clone https://github.com/TREYWANGCQU/termux-ohmyzsh "$HOME/termux-ohmyzsh" --depth 1


#backpack
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"

# install oh my zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
cp "$HOME/termux-ohmyzsh/zshrc.zsh-template" "$HOME/.zshrc"


# install zsh addons
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



# change shell to zsh
chsh -s zsh
rm -rf "$HOME/termux-ohmyzsh"

echo "oh-my-zsh install complete!"

exit
