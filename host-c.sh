export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

ip addr add 172.16.0.14/23 dev enp0s8

ifconfig enp0s8 up

ip route add 192.168.0.0/24 via 172.16.0.1
ip route add 192.168.1.0/26 via 172.16.0.1

apt update
apt -y install docker.io
docker pull dustnic82/nginx-test

#docker run --name web-server -p 80:80 -d dustnic82/nginx-test

