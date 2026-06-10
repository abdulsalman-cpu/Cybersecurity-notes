#### Cron Jobs & Troubleshooting Review

### Package Management Review

#### Install Package

```bash
sudo apt install nginx
sudo apt install htop
sudo apt install curl
sudo apt install git
sudo apt install vim
```

#### Remove Package

```bash
sudo apt remove nginx
sudo apt remove htop
sudo apt remove curl
sudo apt remove mysql-server
```

#### Search Package in Repository

```bash
apt search nginx
apt search apache2
apt search mysql
apt search curl
apt search vim
```

#### Verify Package Installed

```bash
dpkg -l | grep nginx
dpkg -l | grep apache2
dpkg -l | grep mysql
dpkg -l | grep curl
dpkg -l | grep git
```

#### Check Program Version

```bash
nginx -v
apache2 -v
git --version
curl --version
htop --version
```

---

# Cron Jobs

### What is a Cron Job?

A cron job is a scheduled task that runs automatically at a specified time.

Examples:

* Daily backups
* Log cleanup
* Health checks
* Report generation
* Maintenance tasks

Think of cron as:

Linux Alarm Clock

At a specific time → Run a command automatically.

---

### Cron Job vs Crontab

# Cron Job

Actual scheduled task

# Crontab

Table/file where cron jobs are stored and managed

---

### View Cron Jobs

```bash
crontab -l
```

Meaning:

List all cron jobs for current user.

---

### Edit Cron Jobs

```bash
crontab -e
```

Meaning:

Edit or create cron jobs.

---

### Basic Cron Format

```text
Minute Hour Day Month Weekday Command
```

Examples:

```text
0 2 * * * backup.sh
```

Runs at:

2:00 AM every day

---

```text
30 2 * * * backup.sh
```

Runs at:

2:30 AM every day

---

```text
15 4 * * * cleanup.sh
```

Runs at:

4:15 AM every day

---

# Troubleshooting Patterns Burned Into Memory

### SSH Not Working

```text
systemctl status ssh
↓
journalctl -u ssh -n 20
↓
ss -tulpn | grep :22
↓
ps -fp PID
↓
Ask management
↓
kill PID
↓
systemctl start ssh
↓
systemctl status ssh
```

---

### Login Fails

```text
Homepage works
↓
Login fails
↓
Database suspicion
↓
systemctl status mysql
```

---

### Disk Full

```text
No space left on device
↓
df -h
↓
du -sh /*
↓
du -sh /var/*
↓
du -sh /var/log/*
↓
Find large file
↓
Ask management
↓
truncate -s 0 logfile
↓
Restart service
↓
Verify
```

---

### Uploads Failing

```text
Uploads fail
↓
Storage suspicion
↓
df -h
```

---

### Website Works Locally But Not For Users

```text
curl localhost works
↓
nginx running
↓
Port 80 listening
↓
Users cannot access
↓
ufw status
```

---

### Website Down After Update

```text
Worked yesterday
↓
Software update
↓
Broken today
↓
Recent change suspicion
```

---

### Slow Every Day Same Time

```text
Same time
↓
Every day
↓
Cron job suspicion
↓
Backup suspicion
↓
Scheduled task suspicion
```

---

### Only One Office Affected

```text
Server healthy
↓
Only one office affected
↓
Network
Routing
VPN
Firewall
ISP
```

---

# Biggest Lesson Today

Troubleshooting is not:

Problem
↓
Run commands

Troubleshooting is:

Problem
↓
Who is affected?
↓
What changed?
↓
What layer is failing?
↓
Gather evidence
↓
Root cause
↓
Get approval
↓
Fix
↓
Verify

This is the mindset of a Linux Administrator moving toward System Engineer.
