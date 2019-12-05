export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

ip link add link enp0s8 name enp0s8.10 type vlan id 10
ip link add link enp0s8 name enp0s8.20 type vlan id 20

ip addr add 192.168.0.1/24 dev enp0s8.10
ip addr add 192.168.1.1/26 dev enp0s8.20
ip addr add 10.10.15.1/30 dev enp0s9

ifconfig enp0s8 up
ifconfig enp0s8.10 up
ifconfig enp0s8.20 up
ifconfig enp0s9 up

ip route add 172.16.0.0/23 via 10.10.15.2

sysctl net.ipv4.ip_forward=1

