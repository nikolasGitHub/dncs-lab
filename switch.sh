export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y tcpdump
apt-get install -y openvswitch-common openvswitch-switch apt-transport-https ca-certificates curl software-properties-common

# Startup commands for switch go here

ovs-vsctl add-br switch
ovs-vsctl add-port switch enp0s8
ovs-vsctl add-port switch enp0s9 tag=10
ovs-vsctl add-port switch enp0s10 tag=20

ifconfig enp0s8 up
ifconfig enp0s9 up
ifconfig enp0s10 up
