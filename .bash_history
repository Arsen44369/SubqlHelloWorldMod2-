sudo apt update

curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_node14.sh | bash
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_docker.sh | bash
mkdir SubQ
cd $HOME/SubQ
git clone https://github.com/subquery/tutorials-account-balances.git
cd tutorials-account-balances
npm install
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100
