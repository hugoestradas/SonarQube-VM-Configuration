sudo apt-get update
sudo apt-get install wget && sudo apt-get install unzip

cat ./bitnami_credentials
curl ifconfig.me

wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm -f *microsoft*.deb

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-3.1
sudo apt-get install dotnet-sdk-2.1

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install aspnetcore-runtime-3.1

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-runtime-3.1

wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip
sudo unzip -d /opt/ sonar-scanner-cli*.zip
rm -f *zip
wget https://github.com/SonarSource/sonar-scanning-examples/archive/master.zip
unzip master.zip
rm -f master.zip

echo "© 2020 Conduent, Inc. All rights reserved."
echo "In the file /opt/sonar-scanner*-linux/conf/sonar-scanner.properties
      add the following lines (copy and paste them) as described below:
        sonar.host.url=https://< localhost | ip of the VM >:9000
        sonar.sourceEncoding=UTF-8"
read -p "Press ENTER key to continue." enter
sudo vim /opt/sonar-scanner-4.2.0.1873-linux/conf/sonar-scanner.properties
echo "In the file /etc/profile.d/sonar-scanner.sh add the following lines (copy and pasted them) as described below:"
echo "#/bin/bash"
echo 'export PATH="$PATH:/opt/sonar-scanner-4.2.0.1873-linux/bin"'
read -p "Press ENTER key to continue." secondenter
sudo vim /etc/profile.d/sonar-scanner.sh
source /etc/profile.d/sonar-scanner.sh

dotnet tool install --global dotnet-sonarscanner --version 4.7.1
