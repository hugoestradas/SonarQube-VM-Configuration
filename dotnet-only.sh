sudo apt-get update
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
