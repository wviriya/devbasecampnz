sudo apt-get -y update
sudo apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get -y update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce
sudo docker login azninja.azurecr.io -u azninja -p OzySMlEK/FymdrbMBAEIGONMA0pWnc9K
sudo docker pull azninja.azurecr.io/web:latest
#move under startup folder
sudo docker run --name myshuttleweb -d --rm -p 80:8080 -t azninja.azurecr.io/web:latest