echo "====installing docker====="
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
docker --version
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get install -y docker-compose
docker-compose --version

echo "=====installing go========"
curl -O https://dl.google.com/go/go1.9.3.linux-amd64.tar.gz
tar xvf go1.9.3.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local
sudo echo "export GOPATH=$HOME/work" >> ~/.bashrc
sudo echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc


curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update
sudo apt-get install nodejs -y

echo "=====fetching fabric images===="
curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh | bash -s 1.0.5
echo "export PATH=$PATH:~/bin" >> ~/.bashrc

echo "=====cloning fabric-samples===="
sudo git clone -b master https://github.com/hyperledger/fabric-samples.git

