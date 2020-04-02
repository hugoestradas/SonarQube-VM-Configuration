az vm image list --location westus --publisher Bitnami --all --output table
az group create --name "poccodeanalysisrg" --location "eastus"
az vm create --resource-group "poccodeanalysisrg" -n "vm" --image "Bitnami:sonarqube:6-4:8.2.2003100519" --size "Standard_B4ms" --admin-username "hugoestradas" --admin-password "Password@123" -l "eastus"
az vm open-port --port 22 --resource-group "poccodeanalysisrg" -n "vm" --priority 100
az vm open-port --port 80 --resource-group "poccodeanalysisrg" -n "vm" --priority 101
az vm open-port --port 900 --resource-group "poccodeanalysisrg" -n "vm" --priority 102
az vm show -d -g "poccodeanalysisrg" -n "vm" --query "publicIps" -o tsv
