#  Linux, Windows, Troubleshooting & Lab Roadmap

## Overview

Today I started connecting Linux, Windows, and macOS concepts together.

The goal is no longer memorizing commands. The goal is understanding:

Problem → Category → Tool → Command → Root Cause → Fix

---

# Core Cross-Platform Commands

## Current User

Linux

```bash
whoami
```

macOS

```bash
whoami
```

Windows PowerShell

```powershell
whoami
```

---

## Computer Name

Linux

```bash
hostname
```

macOS

```bash
hostname
```

Windows

```powershell
hostname
```

---

## Current Directory

Linux/macOS

```bash
pwd
```

Windows

```powershell
Get-Location
```

Alias:

```powershell
pwd
```

---

## List Files

Linux/macOS

```bash
ls
```

Windows

```powershell
Get-ChildItem
```

Alias:

```powershell
ls
```

---

## Create Folder

Linux/macOS

```bash
mkdir test
```

Windows

```powershell
mkdir test
```

---

## Change Directory

Linux/macOS

```bash
cd folder
cd ..
cd ~
```

Windows

```powershell
cd folder
cd ..
cd ~
```

---

## Create File

Linux/macOS

```bash
touch notes.txt
```

Windows

```powershell
New-Item notes.txt
```

---

## Copy File

Linux/macOS

```bash
cp notes.txt backup.txt
```

Windows

```powershell
Copy-Item notes.txt backup.txt
```

---

## Move / Rename File

Linux/macOS

```bash
mv notes.txt report.txt
```

Windows

```powershell
Move-Item notes.txt report.txt
```

---

## Delete File

Linux/macOS

```bash
rm report.txt
```

Windows

```powershell
Remove-Item report.txt
```

---

# Troubleshooting Mindset

Never start with commands.

Think:

```text
Error
 ↓
Category
 ↓
Tool
 ↓
Command
 ↓
Root Cause
 ↓
Fix
```

---

# Main Troubleshooting Categories

## DNS

Examples:

* Host not found
* Temporary failure in name resolution

Tools:

```bash
ping
nslookup
dig
```

---

## Network

Examples:

* Cannot ping
* Wrong IP
* Gateway issue

Tools:

```bash
ip a
ping
```

---

## Firewall

Examples:

* Connection timed out
* Port blocked

Tools:

```bash
ufw status
ss -tulpn
```

---

## Service

Examples:

* SSH down
* Apache down
* MySQL down

Tools:

```bash
systemctl status
journalctl
```

Windows:

```powershell
Get-Service
```

---

## Storage

Examples:

* No space left on device
* Disk full

Tools:

```bash
df -h
du -sh
```

Windows:

```powershell
Get-PSDrive
```

---

## Memory

Examples:

* Out of memory
* OOM killer

Tools:

```bash
free -h
top
```

---

## Permission

Examples:

* Permission denied

Tools:

```bash
ls -l
chmod
chown
```

Windows:

```powershell
Get-Acl
```

---

## Authentication

Examples:

* Failed password
* User locked out

Fix:

* Reset password
* Unlock account

---

## SSH Key

Examples:

* Failed publickey

Check:

```bash
~/.ssh/authorized_keys
```

---

## Database

Examples:

* Too many connections
* Slow query

Tools:

```bash
systemctl status mysql
journalctl -u mysql
```

---

## Configuration

Examples:

* DocumentRoot does not exist
* Wrong path
* Invalid syntax

---

## Application Crash

Examples:

* Segmentation fault
* Core dump

---

# Lab Roadmap

## SSH Lab

Break:

* Stop SSH

Investigate:

```bash
systemctl status ssh
journalctl -u ssh -n 20
ss -tulpn | grep :22
```

Fix:

* Start SSH

Verify:

* SSH connection works

---

## Apache Lab

Break:

* Stop Apache

Investigate:

```bash
systemctl status apache2
journalctl -u apache2 -n 20
```

Fix:

* Start Apache

Verify:

* Website loads

---

## DNS Lab

Break:

* Wrong DNS

Investigate:

```bash
ping google.com
cat /etc/resolv.conf
```

Fix:

* Restore DNS

Verify:

* Name resolution works

---

## Storage Lab

Break:

* Create large files

Investigate:

```bash
df -h
du -sh
```

Fix:

* Remove files

Verify:

* Space recovered

---

## Printer Lab

Windows

```powershell
Get-Service Spooler
Stop-Service Spooler
Start-Service Spooler
```

Linux

```bash
systemctl status cups
systemctl restart cups
```

Goal:

* Understand printer troubleshooting

---

# Future Topics

## Storage Expansion

Learn:

* Add new disk
* Partition disk
* Format disk
* Mount disk
* Extend filesystem
* Preserve existing data

---

## Windows Topics

* Services
* Processes
* Event Viewer
* PowerShell
* Printer Troubleshooting
* File Permissions
* Networking

---

## Long-Term Roadmap

Linux
↓
Windows
↓
Networking
↓
Active Directory
↓
Security
↓
Cloud
↓
Automation
↓
AI

Goal:

Become capable of troubleshooting and managing Linux, Windows, and cloud systems using both manual skills and AI-assisted workflows.
