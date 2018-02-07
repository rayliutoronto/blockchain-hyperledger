curl -O https://hyperledger.github.io/composer/prereqs-ubuntu.sh
chmod u+x prereqs-ubuntu.sh
./prereqs-ubuntu.sh

echo "export PATH=$HOME/.nvm/versions/node/v8.9.4/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
npm install -g composer-cli
npm install -g composer-rest-server
npm install -g generator-hyperledger-composer
npm install -g composer-playground
npm install -g yo

mkdir ~/fabric-tools && cd ~/fabric-tools

sudo apt-get install -y zip
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.zip
unzip fabric-dev-servers.zip
cd ~/fabric-tools
./startFabric.sh
#./createPeerAdminCard.sh