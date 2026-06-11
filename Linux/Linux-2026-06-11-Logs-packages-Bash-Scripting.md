## Logs Deep Dive

### Important Commands

```bash
journalctl -u ssh -n 20
journalctl -n 50
journalctl -xe
tail -f /var/log/syslog
```

### Error Recognition

```text
Failed password
    ↓
Authentication issue

Failed publickey
    ↓
SSH key issue

Permission denied
    ↓
Permission issue

Operation not permitted
    ↓
Privilege issue

Host not found
    ↓
DNS issue

Name or service not known
    ↓
DNS / hostname issue

No space left on device
    ↓
Storage / disk full

Disk quota exceeded
    ↓
User storage limit reached

Cannot allocate memory
    ↓
RAM issue

Out of memory: Killed process
    ↓
Linux killed process because RAM was exhausted

Broken pipe
    ↓
Broken communication between processes

Segmentation fault
    ↓
Application crashed

Address already in use
    ↓
Port already used by another process

Read-only file system
    ↓
Filesystem is mounted read-only

No such file or directory
    ↓
Wrong path or missing file

Too many open files
    ↓
Process reached open-file limit
```

---

## Package Management

### Install Package

```bash
sudo apt install nginx
```

### Remove Package

```bash
sudo apt remove nginx
```

### Refresh Package List

```bash
sudo apt update
```

### Upgrade Installed Packages

```bash
sudo apt upgrade
```

### Search Packages

```bash
apt search nginx
```

### Check if Installed

```bash
dpkg -l | grep nginx
```

### Important Difference

```text
apt update
    ↓
Refresh package information

apt upgrade
    ↓
Install newer package versions
```

---

## Real Ticket Thinking

### Troubleshooting Flow

```text
Problem
   ↓
Pattern
   ↓
Suspicion
   ↓
Command
   ↓
Evidence
   ↓
Root Cause
```

### Common Patterns

```text
Same time every day
    ↓
Cron job

Only one office affected
    ↓
Network / VPN / Routing

Only one user affected
    ↓
Permissions

Website works
Login works
Saving fails
    ↓
MySQL

Website down
SSH works
MySQL works
    ↓
Nginx / Apache

Website slow
SSH slow
MySQL slow
    ↓
Resource issue
```

---

## Bash Scripting - Day 1

### Create Script

```bash
touch backup.sh
```

### Edit Script

```bash
nano backup.sh
```

### Bash Shebang

```bash
#!/bin/bash
```

Meaning:

```text
Run this script using Bash
```

---

## Commands Used Inside Scripts

### Date

```bash
date
```

Output:

```text
Current date and time
```

### Uptime

```bash
uptime
```

Output:

```text
How long system has been running
```

### Disk Usage

```bash
df -h
```

Output:

```text
Disk usage
```

### Memory Usage

```bash
free -h
```

Output:

```text
RAM usage
```

---

## Echo Command

### Example

```bash
echo "Hello"
```

Output:

```text
Hello
```

Meaning:

```text
echo
   ↓
Print text to screen
```

---

## Variables

### Create Variable

```bash
NAME="Salman"
CITY="Miami"
SERVER="web01"
```

### Display Variable

```bash
echo $NAME
echo $CITY
echo $SERVER
```

Output:

```text
Salman
Miami
web01
```

### Important Rule

```text
SERVER="web01"
      ↓
Store value

echo $SERVER
      ↓
Display value
```

---

## First Health Check Script

```bash
#!/bin/bash

echo "System Health Check"

date
uptime
df -h
free -h
```

Output:

```text
System Health Check
Current Date
System Uptime
Disk Usage
Memory Usage
```

---

## Cron Review

### Every Day at 2:00 AM

```cron
0 2 * * *
```

Meaning:

```text
Run script every day at 2:00 AM
```

### Connection

```text
Script
    ↓
backup.sh

Cron
    ↓
0 2 * * *

Result
    ↓
backup.sh runs automatically at 2:00 AM
```
