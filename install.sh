apt-get install git
git config --global user.name "Hugh Wimberly"
git config --global user.email "hugh.wimberly@gmail.com"
cd ~ ; git clone git@github.com:moredatarequired/dotfiles.git .dotfiles
sudo add-apt-repository ppa:cassou/emacs -y
sudo apt-get update && sudo apt-get dist-upgrade -y
apt-get install emacs24 emacs24-el -y
apt-get install zsh
apt-get install curl
curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh
