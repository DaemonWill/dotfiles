sudo apt-get upgrade

# setup virtual env
sudo apt-get install python-pip
pip install virtualenv
cd ~
virtualenv virtualenv
. bin/activate

# setup tmux
sudo apt-get install tmux
gem install tmuxinator