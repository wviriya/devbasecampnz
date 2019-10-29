# Developer Base Camp NZ - Lab
<!--- (https://1drv.ms/x/s!As)HLBSbUO0UojYlw0TWxc7Kgi8OYvA?e=yFQs5O) --->
### Links:
- **[Workshop Suvey](https://www.microsoftevents.com/profile/7840427)**
- **[Workshop Slides](https://wviriyablob.blob.core.windows.net/devcamp/DevCampSlides.zip)**
- **[Azure Pass](https://1drv.ms/x/s!AsHLBSbUO0UojYlw0TWxc7Kgi8OYvA?e=v676wN)**
- Redeem Azure Pass **[Here](https://www.microsoftazurepass.com/)**
- **[Lab Instruction](https://aksworkshop.io)**

## Important Notice!
On lab insturction ***Section 2.1*** use code below to provision your AKS cluster (**[az aks create](https://docs.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-create)**)

     export RG=<resource-group>
     export AKS=<unique-aks-cluster-name>
     export DC=southeastasia
     
     #Create a Resoure Group
     az group create -n $RG -l $DC

     #Create an AKS Cluster
     az aks create -g $RG \
     -n $AKS \
     -l $DC \
     -c 2 \
     --load-balancer-sku basic \
     --generate-ssh-keys

     #Connect to your AKS Cluster
     az aks get-credentials -g $RG -n $AKS
     kubectl get no

 
