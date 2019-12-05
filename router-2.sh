export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

ip addr add 172.16.0.1/23 dev enp0s8
ip addr add 10.10.15.2/30 dev enp0s9

ifconfig enp0s8 up
ifconfig enp0s9 up

ip route add 192.168.0.0/24 via 10.10.15.1
ip route add 192.168.1.0/26 via 10.10.15.1

sysctl net.ipv4.ip_forward=1

