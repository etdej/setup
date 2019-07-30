# setup
```
sudo apt install git-all
ssh-keygen -t rsa -b 4096 -C "e.dejoie@drishti.com" -N "" -f ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "Please add your ssh pub key to your github account : https://github.com/settings/ssh/new"

cat ~/.ssh/id_rsa.pub
```

```
git clone git@github.com:etdej/setup.git ~/setup
cd ~/setup
bash setup.sh
```
