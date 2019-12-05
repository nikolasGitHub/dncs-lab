export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

ip addr add 192.168.1.14/26 dev enp0s8

ifconfig enp0s8 up

ip route add 192.168.0.0/24 via 192.168.1.1
ip route add 172.16.0.0/23 via 192.168.1.1

echo "172.16.0.14	web-server.eu" >> /etc/hosts

