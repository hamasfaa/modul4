#! /usr/bin/env bash

VMID=$1;
PHASE=$2;

if [[ "$PHASE" == "post-start" ]]; then
    sleep 180;

    qm guest exec "$VMID" -- bash -c "
        sysctl -w net.ipv4.ip_forward=1 &&
        echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf &&
        netplan apply &&
    "
    case "$VMID" in


        264)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            ip link set eth2 up &&
            192.168.5.8/30 via 192.168.5.6 && 
            192.168.5.12/30 via 192.168.5.6 && 
            192.168.5.16/30 via 192.168.5.6 &&
            192.168.5.32/29 via 192.168.5.6 && 
            192.168.5.40/29 via 192.168.5.6 && 
            192.168.5.48/29 via 192.168.5.6 
            "
        ;;

        265)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            192.168.5.0/30 via 192.168.5.5 &&
            192.168.5.24/29 via 192.168.5.5 &&
            192.168.5.12/30 via 192.168.5.10 &&
            192.168.5.16/30 via 192.168.5.10 &&
            192.168.5.32/29 via 192.168.5.10 &&
            192.168.5.40/29 via 192.168.5.10 &&
            192.168.5.48/29 via 192.168.5.10 
            "
        ;;
        
        266)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            ip link set eth2 up &&
            192.168.5.0/30 via 192.168.5.9 &&
            192.168.5.4/30 via 192.168.5.9 &&
            192.168.5.24/29 via 192.168.5.9 &&
            192.168.5.16/30 via 192.168.5.14 &&
            192.168.5.32/29 via 192.168.5.14 &&
            192.168.5.40/29 via 192.168.5.14 &&
            192.168.5.48/29 via 192.168.5.14 
            "
        ;;

        267)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            192.168.5.0/30 via 192.168.5.41 &&
            192.168.5.4/30 via 192.168.5.41 &&
            192.168.5.8/30 via 192.168.5.41 &&
            192.168.5.12/30 via 192.168.5.41 &&
            192.168.5.16/30 via 192.168.5.41 &&
            192.168.5.24/29 via 192.168.5.41 &&
            192.168.5.32/29 via 192.168.5.41 
            "
        ;;

        268)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            ip link set eth2 up &&
            192.168.5.0/30 via 192.168.5.13 &&
            192.168.5.4/30 via 192.168.5.13 &&
            192.168.5.8/30 via 192.168.5.13 &&
            192.168.5.24/29 via 192.168.5.13 &&
            192.168.5.32/29 via 192.168.5.18 &&
            192.168.5.40/29 via 192.168.5.21 &&
            192.168.5.48/29 via 192.168.5.21
           "
        ;;

        269)
            qm guest exec "$VMID" -- bash -c "
            ip link set eth0 up &&
            ip link set eth1 up &&
            192.168.5.0/30 via 192.168.5.17 &&
            192.168.5.4/30 via 192.168.5.17 &&
            192.168.5.8/30 via 192.168.5.17 &&
            192.168.5.12/30 via 192.168.5.17 &&
            192.168.5.24/29 via 192.168.5.17 &&
            192.168.5.40/29 via 192.168.5.17 &&
            192.168.5.48/29 via 192.168.5.17 
            "
        ;;
fi