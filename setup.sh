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
echo "export PATH=$PATH:/home/sammy/anaconda3/bin" >> ~/.zhrc
source ~/.zshrc
conda create --name drishti3  python=3.7
conda activate drishti3
conda install pytorch
conda install jupyter
conda install opencv-python
pip install protobuf
jupyter notebook --generate-config
echo "c = get_config()" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 5000" >> ~/.jupyter/jupyter_notebook_config.py


# Create 
cp bashrc ~/.bashrc
cp gitconfig ~/.gitconfig
cp vimrc ~/.vimrc

# Mount disk
sudo mkdir -p /mnt/data
sudo mount -o discard,defaults /dev/sdb /mnt/data
sudo chmod a+w /mnt/data

sh ./install_nvidia_driver.sh
