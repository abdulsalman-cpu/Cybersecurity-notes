# Nmap + Subnetting Notes - 2026-05-14

## Basic Scan
nmap TARGET  
Find open ports

## Host Discovery
nmap -sn TARGET  
Check alive hosts

## Version Detection
nmap -sV TARGET  
Detect versions

## Aggressive Scan
nmap -A TARGET  
OS + scripts

## All Ports
nmap -p- TARGET  
Scan all ports

## Specific Ports
nmap -p 22,80 TARGET  
Selected ports only

## Fast Scan
nmap -T4 TARGET  
Faster scanning

## SYN Scan
nmap -sS TARGET  
Stealth SYN scan

## UDP Scan
nmap -sU TARGET  
UDP ports

## No Ping
nmap -Pn TARGET  
Skip ping check

## Save Output
nmap -oN scan.txt TARGET  
Save to file

## List Targets
nmap -sL TARGET  
List IPs only

---

# Common Ports

22 = SSH  
53 = DNS  
80 = HTTP  
443 = HTTPS  
3389 = RDP

---

# Port States

open = service listening  
closed = no service  
filtered = firewall blocking

---

# Subnetting

/24 = 256 IPs  
/25 = 128 IPs  
/26 = 64 IPs  
/27 = 32 IPs  
/28 = 16 IPs

---

# Jump Sizes

/24 = jump 256  
/25 = jump 128  
/26 = jump 64  
/27 = jump 32  
/28 = jump 16

---

# Examples

192.168.0.0/27  
Range = 0-31  
Next subnet = 32

192.168.0.0/28  
Range = 0-15  
Next subnet = 16

192.168.0.0/26  
Range = 0-63  
Next subnet = 64

---

# Key Idea

Subnet ends = 1 less than next subnet start

Example:

0-31  
32-63  
64-95
