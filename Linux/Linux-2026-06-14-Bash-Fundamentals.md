### Bash Fundamentals

#### Variables

Example:

```bash
SERVER=web01
SERVICE=apache2
STATUS=FAILED
```

Concept:

* Variable Name: `SERVER`
* Variable Value: `web01`

Example:

```bash
echo $SERVER
```

Output:

```text
web01
```

---

#### Exit Codes

Linux commands return an exit code after execution.

```text
0        = Success
Non-zero = Failure
```

Examples:

```bash
backup.sh
echo $?
```

Output:

```text
0
```

Meaning:

```text
Backup succeeded
```

Output:

```text
1
```

Meaning:

```text
Backup failed
```

Important:

An exit code tells us whether a command succeeded or failed.

It does not tell us why it failed.

---

#### if / else Logic

Concept:

```text
IF condition is true
    THEN do this
ELSE
    do something else
```

Example:

```text
Backup completed
    SUCCESS

Backup failed
    FAILED
```

---

### Reading Bash Scripts

Current focus is understanding script purpose before learning advanced syntax.

Questions to ask:

```text
What is this script trying to do?
What system is it checking?
What problem is it trying to detect?
```

Examples of scripts reviewed:

#### Website Health Check

Checks:

* Apache
* MySQL
* DNS
* Memory
* Disk
* Open Ports
* Logs
* System Load

Purpose:

```text
Investigate website outages or performance issues.
```

---

#### Database Incident Check

Checks:

* MySQL Service
* Port 3306
* Memory
* Disk
* Error Logs
* System Load

Purpose:

```text
Investigate database availability and performance issues.
```

---

# Troubleshooting Categories

### Authentication

```text
Failed password
```

Category:

```text
Authentication issue
```

---

### SSH Authentication

```text
Failed publickey
```

Category:

```text
SSH key authentication issue
```

---

### DNS

```text
Host not found
Temporary failure in name resolution
Works by IP but not hostname
```

Category:

```text
DNS issue
```

---

### Storage

```text
No space left on device
```

Category:

```text
Storage issue
```

---

### User Quota

```text
Disk quota exceeded
```

Category:

```text
User quota issue
```

---

### Port Conflict

```text
Address already in use
Port already in use
```

Category:

```text
Port conflict
```

---

### Database

```text
Too many connections
Slow query detected
```

Category:

```text
Database issue
Database performance issue
```

---

### Memory

```text
Out of memory
```

Category:

```text
Memory issue
```

---

### Application Memory Limit

```text
Allowed memory size exhausted
```

Category:

```text
Application memory limit issue
```

---

### Process Communication

```text
Broken pipe
```

Category:

```text
Process communication issue
```

---

### Application Crash

```text
Segmentation fault
```

Category:

```text
Application crash
```

---

### Permissions

```text
Permission denied
```

Category:

```text
Permission issue
```

---

### Configuration

```text
DocumentRoot does not exist
```

Category:

```text
Configuration / Path issue
```

---

### Network / Firewall

```text
Connection timed out
```

Category:

```text
Network / Firewall issue
```

---

### Service / Port

```text
Connection refused
```

Category:

```text
Service or Port issue
```

---

# Commands Reviewed

```bash
df -h
free -h
uptime
date
cat /etc/resolv.conf
systemctl status ssh
journalctl -u ssh -n 20
journalctl -u apache2 -n 20
journalctl -u mysql -n 20
top
ps -fp PID
ss -tulpn | grep :22
ss -tulpn | grep :80
ufw status
ls -ld
du -sh /*
du -sh /var/*
```

---

# Troubleshooting Mindset

Effective Linux administration is not about memorizing commands.

The goal is to identify:

1. The symptom
2. The problem category
3. The evidence
4. The root cause
5. The corrective action

Example:

```text
Symptom:
Website inaccessible

Investigation:
Service Status
Logs
Ports
DNS
Firewall

Root Cause:
Apache service stopped

Corrective Action:
Restore service and investigate why it stopped
```

Commands are tools used during the investigation process.

Critical thinking and troubleshooting methodology are more valuable than memorizing individual commands.

---

# Key Lesson

```text
Symptom
    ↓
Category
    ↓
Investigation
    ↓
Root Cause
    ↓
Fix
```

Think like an administrator, not a command memorizer.
