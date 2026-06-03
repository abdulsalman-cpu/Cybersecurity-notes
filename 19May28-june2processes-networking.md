# Linux Networking & Process Notes (Day 44-50)

## Process Commands

### View Processes

ps

Shows processes for current terminal.

### View All Processes

ps -e

### Full Process List

ps -ef

Useful for finding running processes.

### Search For Process

ps -ef | grep processname

Example:

ps -ef | grep ssh

### Detailed Process Information

ps -fp PID

Example:

ps -fp 1234

### Important Terms

PID  = Process ID

PPID = Parent Process ID

Parent process starts child process.

Example:

zsh
↓
sleep 500

zsh = Parent
sleep = Child

### Kill Process

kill PID

Example:

kill 1234

### Find Process By Name

pgrep processname

Example:

pgrep ssh

### Kill By Name

pkill processname

Example:

pkill sleep

### System Monitoring

top

Live process monitor.

htop

Improved process monitor.

### Memory

free -h

Shows RAM usage.

### Disk Space

df -h

Shows filesystem usage.

### Folder Size

du -sh foldername

Example:

du -sh /var/log

### Watch Command

watch command

Example:

watch free -h

Runs command repeatedly.

--------------------------------------------------

## Network Basics

### Loopback

127.0.0.1

Localhost.

Computer talks to itself.

Interface:

lo

### Network Interface

ip a

Shows:

- Interface name
- IPv4 address
- IPv6 address
- MAC address

Important Fields:

inet       = IPv4 Address

inet6      = IPv6 Address

link/ether = MAC Address

Example:

eth0
192.168.64.2

### MAC Address

Example:

ea:f0:2f:00:11:3a

Used for local network communication.

--------------------------------------------------

## DHCP

Provides:

- IP Address
- Gateway
- DNS

Example:

IP:
192.168.64.2

Gateway:
192.168.64.1

DNS:
8.8.8.8

--------------------------------------------------

## DNS

Purpose:

Name → IP Address

Example:

google.com
↓
142.x.x.x

Troubleshooting:

Can ping 8.8.8.8
Cannot ping google.com

First suspect:
DNS

--------------------------------------------------

## ARP

Purpose:

IP Address → MAC Address

Example:

192.168.64.1
↓
MAC Address

ARP Request:

Who has 192.168.64.1?

ARP Reply:

I am 192.168.64.1

### Same Network

192.168.64.2
↓
192.168.64.100

ARP for target MAC.

Send directly.

### Different Network

192.168.64.2
↓
8.8.8.8

ARP for router MAC.

Send packet to router.

--------------------------------------------------

## Routing

Command:

ip route

Example:

default via 192.168.64.1 dev eth0

Meaning:

Unknown traffic goes to router.

Router:

192.168.64.1

### Local Route

192.168.64.0/24 dev eth0

Meaning:

192.168.64.x

belongs to local network.

### Same Network

192.168.64.2
↓
192.168.64.100

Direct communication.

### Different Network

192.168.64.2
↓
8.8.8.8

Use router.

--------------------------------------------------

## NAT

Private IP:

192.168.64.2

Public IP:

99.159.246.92

NAT translates:

192.168.64.2
↓
99.159.246.92

Internet sees public IP.

Not private IP.

--------------------------------------------------

## Private vs Public IP

Private:

192.168.x.x

10.x.x.x

172.16.x.x - 172.31.x.x

Can be reused by millions of people.

Public:

Example:

99.159.246.92

Must be unique on the Internet.

--------------------------------------------------

## Subnet Review

/24

Network:
.0

Usable:
.1 - .254

Broadcast:
.255

Example:

192.168.64.0/24

### /25

0-127

128-255

### /26

0-63

64-127

128-191

192-255

--------------------------------------------------

## Troubleshooting Ladder

1. Ping 127.0.0.1

Failure:
Local system issue

2. Ping Gateway

Failure:
Local network issue

3. Ping 8.8.8.8

Failure:
Router / ISP / Internet issue

4. Ping google.com

Failure:
DNS issue

--------------------------------------------------

## Key Rule

Same Network
↓
ARP for target
↓
Send directly

Different Network
↓
ARP for router
↓
Router
↓
Internet
