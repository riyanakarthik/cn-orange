#!/bin/bash

echo "===== SDN Learning Switch Demo ====="
echo "1. Start POX controller in Terminal 1:"
echo "   cd ~/pox"
echo "   python3 pox.py forwarding.l2_learning"
echo
echo "2. Start Mininet in Terminal 2:"
echo "   sudo mn --controller=remote,ip=127.0.0.1,port=6633 --switch=ovsk,protocols=OpenFlow10"
echo
echo "3. Inside Mininet CLI, run:"
echo "   pingall"
echo "   nodes"
echo "   net"
echo
echo "4. Failure scenario:"
echo "   h1 ifconfig h1-eth0 down"
echo "   pingall"
echo "   h1 ifconfig h1-eth0 up"
echo
echo "5. Bandwidth test:"
echo "   iperf h1 h2"
echo
echo "6. Switch verification in Terminal 3:"
echo "   sudo ovs-ofctl -O OpenFlow10 show s1"