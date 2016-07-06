echo -e "[\033[0;32mINFO\033[0m] changing git default email"
git config --global user.email mmoulton@digitalmeasures.com

echo -e "[\033[0;32mINFO\033[0m] installing npm"
echo "Encrypted Password stored in Artifactory: "
read -s PASSWORD

curl -ummoulton:$PASSWORD https://artifactory.digitalmeasures.com/artifactory/api/npm/auth > ~/.npmrc
echo "registry=https://artifactory.digitalmeasures.com/artifactory/api/npm/npm-private" >> ~/.npmrc

echo -e "[\033[0;32mINFO\033[0m] npmrc created"
cat ~/.npmrc
