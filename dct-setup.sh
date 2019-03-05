cd ~

echo "'sudo' should be installed"
echo "user $USER should have sudo permissions (/etc/sudoers)"

echo "Install git"
sudo apt-get install git

echo "git clone linux-configs"
cd ~; git clone https://github.com/discreto13/linux-configs
ln -vsf ~/linux-configs/home/user/.gitconfig ~/

echo "Setup ~/bin directory"
mkdir ~/bin; PATH=~/bin:$PATH;

echo "Create link to sources"
sudo ln -vsf ~/linux-configs/etc/apt/sources.list.d /etc/apt/

#xfce settings
echo "XFCE config"
ln -vsf ~/linux-configs/home/user/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

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

echo "Install screen"
sudo apt-get install screen

echo "Install tmux"
sudo apt-get install tmux

echo "Install lm_sensors (sensors)"
sudo apt-get install lm-sensors

echo "Install mysql"
sudo apt-get install mysql-client mysql-workbench

echo "Install chromium"
sudo apt-get install chromium

echo "Install sublime-text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install sublime-text

echo "Install g++"
sudo apt-get install g++

echo "Install make"
sudo apt-get install make

echo "Install bluetooth"
sudo apt-get install bluetooth blueman bluez pulseaudio-module-bluetooth

echo "Update and upgrade applications"
sudo apt-get update
sudo apt-get upgrade

echo "Install net-tools"
sudo apt-get install net-tools

echo "Install curl"
sudo apt-get install curl

echo 'Need to reboot'
