#Install zsh 
apt install zsh
chsh -s /usr/bin/zsh root
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
source ~/.zshrc

# Installs
sudo apt install tmux

sudo apt-get update && sudo apt-get install google-cloud-sdk

cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
echo "export PATH=$PATH:/home/sammy/anaconda3/bin"
source ~/.zshrc
conda create --name drishti3  python=3.7
conda activate drishti3
conda install pytorch
conda install jupyter
conda install opencv-python
pip install protobuf

# Create 
cp bashrc ~/.bashrc
cp gitconfig ~/.gitconfig
cp vimrc ~/.vimrc

# Mount disk
sudo mkdir -p /mnt/data
sudo mount -o discard,defaults /dev/sdb /mnt/data
sudo chmod a+w /mnt/data

