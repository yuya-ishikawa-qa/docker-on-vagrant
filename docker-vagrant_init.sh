sudo yum install -y yum-utils
sudo yum install -y device-mapper-persistent-data
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
docker -v

mkdir -p /home/vagrant/.local/bin/
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /home/vagrant/.local/bin/docker-compose
sudo chmod 775 /home/vagrant/.local/bin/docker-compose
docker-compose -v

sudo yum install -y git-all
git --version