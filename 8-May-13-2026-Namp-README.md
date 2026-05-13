# Day 1 - Nmap Basics
Date: 2026-05-13

## What is Nmap?

Nmap is a network scanning tool.

It helps us:
- find live computers
- find open ports
- detect services
- detect software versions

Simple idea:

Computer = House  
Ports = Doors  
Nmap = Security guard checking doors

---

## Important Ideas

Open port = something is listening there  
Closed port = nobody there  
Filtered port = hidden or blocked

---

## IP Address

Example:

```bash
10.66.123.123
```

This is the target machine.

When we run:

```bash
nmap 10.66.123.123
```

We are saying:

"Go scan this computer."

---

## Basic Nmap Scan

```bash
nmap IP
```

Example:

```bash
nmap 10.66.123.123
```

What it does:
- scans target machine
- checks ports
- finds open services

Example output:

```text
22/tcp open ssh
80/tcp open http
```

Meaning:

| Part | Meaning |
|---|---|
| 22 | Port number |
| tcp | network communication method |
| open | port is open |
| ssh | SSH service running |

---

## Fast Scan

```bash
nmap -F IP
```

Example:

```bash
nmap -F 10.66.123.123
```

`-F` means:

Fast scan

What it does:
- scans only common/popular ports
- faster than normal scan

Important:
- may miss uncommon ports

Example:
- normal scan found port 7777
- fast scan skipped it

---

## Service Version Detection

```bash
nmap -sV IP
```

Example:

```bash
nmap -sV 10.66.123.123
```

`-sV` means:

Service Version Detection

What it does:
- checks software versions
- tries to identify services

Example output:

```text
OpenSSH 8.2
Apache 2.4
```

Meaning:
- SSH version 8.2
- Apache web server version 2.4

---

## Weird HTML/Error Messages

Example:

```html
<title>Error response</title>
```

or:

```text
405 Method Not Allowed
```

Meaning:
- website replied with an error message
- Nmap/curl tested the web server
- server answered back

This is normal.

---

## Common Ports

| Port | Service |
|---|---|
| 22 | SSH |
| 80 | HTTP Website |
| 443 | HTTPS Secure Website |
| 53 | DNS |
| 3389 | Remote Desktop |

---

## SSH Connection

If Nmap finds:

```text
22/tcp open ssh
```

We can try connecting with:

```bash
ssh username@IP
```

Example:

```bash
ssh root@10.66.123.123
```

SSH may ask:
- trust machine?
- password?

Open SSH port does NOT mean automatic access.

Still needs:
- username
- password
or
- SSH key

---

## Important Beginner Flow

1. Nmap finds open port  
2. Identify service  
3. Use matching tool

Examples:

| Service | Tool |
|---|---|
| SSH | ssh |
| HTTP | browser / curl |
| FTP | ftp |

---

## Simple Summary

| Command | Meaning |
|---|---|
| `nmap IP` | normal scan |
| `nmap -F IP` | fast scan |
| `nmap -sV IP` | detect software versions |

---

## Important Reminder

Right now the goal is:
- understand ports
- understand services
- read scan results slowly

NOT memorize everything.
