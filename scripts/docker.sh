systemctl enable --now snapd.socket
systemctl start docker.service
systemctl enable docker.service
pamac install docker-compose
# sudo groupadd docker
sudo usermod -aG docker $USER
