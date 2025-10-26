#!/bin/sh

clab_name="clab-pac3-2025-1"

# Remove the default routes to ensure that routers and hosts are isolated
printf "Removing default routes from routers and hosts..."
sudo docker exec -d $clab_name-vyos01 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos02 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos11 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos12 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos13 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos14 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos15 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-host11 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-host12 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-host13 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-host14 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-host15 ip route del default via 172.20.20.1
sudo docker exec -d $clab_name-vyos01 ip -6 route del default
sudo docker exec -d $clab_name-vyos02 ip -6 route del default
sudo docker exec -d $clab_name-vyos11 ip -6 route del default
sudo docker exec -d $clab_name-vyos12 ip -6 route del default
sudo docker exec -d $clab_name-vyos13 ip -6 route del default
sudo docker exec -d $clab_name-vyos14 ip -6 route del default
sudo docker exec -d $clab_name-vyos15 ip -6 route del default
sudo docker exec -d $clab_name-host11 ip -6 route del default
sudo docker exec -d $clab_name-host12 ip -6 route del default
sudo docker exec -d $clab_name-host13 ip -6 route del default
sudo docker exec -d $clab_name-host14 ip -6 route del default
sudo docker exec -d $clab_name-host15 ip -6 route del default

sudo docker exec -d $clab_name-host11 ip addr add 192.168.10.11/24 dev eth1
sudo docker exec -d $clab_name-host21 ip addr add 192.168.20.21/24 dev eth1
sudo docker exec -d $clab_name-host12 ip addr add 192.168.10.12/24 dev eth1
sudo docker exec -d $clab_name-host22 ip addr add 192.168.20.22/24 dev eth1
sudo docker exec -d $clab_name-host13 ip addr add 192.168.10.13/24 dev eth1
sudo docker exec -d $clab_name-host23 ip addr add 192.168.20.23/24 dev eth1
sudo docker exec -d $clab_name-host14 ip addr add 192.168.10.14/24 dev eth1
sudo docker exec -d $clab_name-host24 ip addr add 192.168.20.24/24 dev eth1
sudo docker exec -d $clab_name-host15 ip addr add 192.168.10.15/24 dev eth1
sudo docker exec -d $clab_name-host25 ip addr add 192.168.20.25/24 dev eth1
printf " done!\n"
