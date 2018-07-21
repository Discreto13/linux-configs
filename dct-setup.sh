cd ~

echo "sudo have to installed"
echo "user $USER sould have sudo permissions (/etc/sudoers)"

echo "Install git"
sudo apt-get install git

echo "git clone linux-configs"
cd ~; git clone https://github.com/discreto13/linux-configs
ln -vsf ~/linux-configs/home/user/.gitconfig ~/

#xfce settings
ln -vsf ~/linux-configs/home/user/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp -vf ~/linux-configs/home/user/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

echo "Install ZSH"
sudo apt-get install zsh
ln -vsf ~/linux-configs/home/user/.zshrc ~/

echo "chsh - set user shell to /bin/zsh"
sudo chsh

echo "Install terminator"
sudo apt-get install terminator
mkdir -p ~/.config/terminator; ln -vsf ~/linux-configs/home/user/.config/terminator/config ~/.config/terminator/

echo "Install mc"
sudo apt-get install mc
ln -vsf ~/linux-configs/home/user/.config/mc/ini ~/.config/mc/
ln -vsf ~/linux-configs/home/user/.config/mc/panels.ini ~/.config/mc/

echo "Install vim"
sudo apt-get install vim
ln -vsf ~/linux-configs/home/user/.selected_editor ~/

echo "Install thunderbird"
sudo apt-get install thunderbird

echo "Install meld"
sudo apt-get install meld

echo "Install mysql"
sudo apt-get install mysql-client mysql-workbench

echo "Install chromium"
sudo apt-get install chromium

echo 'Need to reboot'