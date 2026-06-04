# Nmap Basics Notes - May 15 2026

## Basic Scan
nmap IP

Example:
nmap 10.67.191.215

--------------------------------------------------

## -sT
TCP Connect Scan

nmap -sT IP

- Full connection
- Complete handshake
- Easier to detect/log

Easy meaning:
FULL CONNECT

--------------------------------------------------

## -sS
TCP SYN Scan

nmap -sS IP

- Starts connection only
- More stealthy
- Faster/common

Easy meaning:
KNOCK ONLY

--------------------------------------------------

## -sU
UDP Scan

nmap -sU IP

- Scans UDP ports
- Slower than TCP scans

Easy meaning:
UDP SERVICES

--------------------------------------------------

## -F
Fast Scan

nmap -F IP

- Scans top 100 ports
- Faster

Easy meaning:
QUICK SCAN

--------------------------------------------------

## -p
Choose Ports

Single port:
nmap -p 80 IP

Range:
nmap -p 1-1000 IP

All ports:
nmap -p- IP

Easy meaning:
PICK PORTS

--------------------------------------------------

## -sV
Service Version Detection

nmap -sV IP

Shows:
- service name
- version

Example:
22/tcp open ssh OpenSSH 8.2

Easy meaning:
SERVICE INFO

--------------------------------------------------

## -O
OS Detection

nmap -O IP

Attempts to detect operating system.

Easy meaning:
FIND OS

--------------------------------------------------

## -A
Aggressive Scan

nmap -A IP

Includes:
- OS detection
- version detection
- traceroute
- scripts

Easy meaning:
ALL-IN-ONE

--------------------------------------------------

## -Pn
Treat Host As Online

nmap -Pn IP

Scans even if ping fails.

Easy meaning:
SCAN ANYWAY

--------------------------------------------------

## Common Ports

22   SSH
53   DNS
80   HTTP
443  HTTPS
8008 HTTP ALT

--------------------------------------------------

## Browser vs Terminal

BROWSER:
- HTTP
- HTTPS

Examples:
http://IP
http://IP:8008
https://IP

TERMINAL:
- SSH
- Echo
- Discard
- Daytime
- FTP

--------------------------------------------------

## Netcat (nc)

Connect to service:
nc IP PORT

Example:
nc 10.67.191.215 7

--------------------------------------------------

## Echo Service

7/tcp open echo

Behavior:
- sends text back

Example:
nc IP 7

Type:
hello

Returns:
hello

--------------------------------------------------

## Discard Service

9/tcp open discard

Behavior:
- accepts data
- throws it away

Example:
nc IP 9

No response expected.

--------------------------------------------------

## Daytime Service

13/tcp open daytime

Behavior:
- returns server date/time

Example:
nc IP 13

--------------------------------------------------

## Scan Status

If prompt does NOT return:
root@...#

Then scan is still running.

Stop scan:
CTRL + C

--------------------------------------------------

## Easy Memory Tricks

-sT = full connect
-sS = stealth knock
-sU = UDP scan
-F  = fast
-p  = pick ports
-sV = service info
-O  = detect OS
-A  = everything
-Pn = scan anyway
