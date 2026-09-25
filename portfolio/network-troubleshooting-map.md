# Network Troubleshooting Map

## Scenario
A Linux server cannot reach an application. Instead of guessing, troubleshoot from the local interface outward.

## Diagnostic flow

### 1. Interface and IP
```bash
ip -4 addr
ip link
```
Confirm that the expected interface is up and has the correct address/prefix.

### 2. Routing
```bash
ip route
ip route get 1.1.1.1
```
Determine which gateway and interface Linux intends to use.

### 3. Neighbor/ARP
```bash
ip neigh
```
For a local-subnet destination, ARP/neighbor resolution is required. For a remote subnet, the host normally resolves the next-hop gateway.

### 4. DNS
```bash
resolvectl status
dig example.com
```
Separate name-resolution problems from basic IP connectivity problems.

### 5. Transport and application
```bash
ss -tulpn
curl -v https://example.com
```
Check sockets and then test the application itself.

### 6. Packet-level evidence
```bash
sudo tcpdump -i eth0 port 53
```
Packet capture helps confirm whether DNS traffic is leaving and whether replies return.

## Mental model
**Interface/IP → route → neighbor/gateway → DNS → TCP/port → TLS/application → verify**

## What this lab demonstrates
- Linux network interfaces
- routing decisions
- ARP/neighbors
- DNS troubleshooting
- sockets and ports
- packet capture
- layered troubleshooting rather than random command execution
