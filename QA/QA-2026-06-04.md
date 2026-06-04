# Linux Practice Q&A (Day 1–Current)

## Files and Directories

Q: Show current directory?
A:

```bash
pwd
```

Q: Show hidden files?
A:

```bash
ls -a
```

Q: Create directory finance?
A:

```bash
mkdir finance
```

Q: Create empty file notes.txt?
A:

```bash
touch notes.txt
```

Q: Display contents of notes.txt?
A:

```bash
cat notes.txt
```

Q: Write linux into notes.txt?
A:

```bash
echo linux > notes.txt
```

Q: Append cybersecurity to notes.txt?
A:

```bash
echo cybersecurity >> notes.txt
```

Q: Copy notes.txt to backup.txt?
A:

```bash
cp notes.txt backup.txt
```

Q: Rename backup.txt to backup2.txt?
A:

```bash
mv backup.txt backup2.txt
```

Q: Delete backup2.txt?
A:

```bash
rm backup2.txt
```

Q: Find notes.txt?
A:

```bash
find . -name "notes.txt"
```

Q: Search for linux inside notes.txt?
A:

```bash
grep linux notes.txt
```

---

## Permissions

Q: What is 755?
A:

```text
rwxr-xr-x
```

Q: What is 644?
A:

```text
rw-r--r--
```

Q: What is 600?
A:

```text
rw-------
```

Q: What is 777?
A:

```text
rwxrwxrwx
```

---

## Processes

Q: Show all processes?
A:

```bash
ps -ef
```

Q: Live process monitor?
A:

```bash
top
```

Q: Show details for PID 4321?
A:

```bash
ps -fp 4321
```

Q: Kill PID 4321?
A:

```bash
kill 4321
```

Q: Force kill PID 4321?
A:

```bash
kill -9 4321
```

Q: Show system uptime?
A:

```bash
uptime
```

---

## Memory and Storage

Q: Show RAM usage?
A:

```bash
free -h
```

Q: Show disk usage and free space?
A:

```bash
df -h
```

Q: Show size of /var/log?
A:

```bash
du -sh /var/log
```

Q: Show size of /home?
A:

```bash
du -sh /home
```

---

## Networking

Q: Show IP addresses?
A:

```bash
ip a
```

Q: Show routing table/default gateway?
A:

```bash
ip route
```

Q: Show DNS configuration?
A:

```bash
cat /etc/resolv.conf
```

Q: Check if SSH is listening on port 22?
A:

```bash
ss -tuln | grep :22
```

Internet troubleshooting order:

```text
ip a
↓
ip route
↓
cat /etc/resolv.conf
```

---

## History

Q: Show command history?
A:

```bash
history
```

Q: Search history for ssh?
A:

```bash
history | grep ssh
```

Q: Search history for systemctl?
A:

```bash
history | grep systemctl
```

---

## Services (systemctl)

Q: Check service status?
A:

```bash
systemctl status SERVICE
```

Q: Start service?
A:

```bash
systemctl start SERVICE
```

Q: Stop service?
A:

```bash
systemctl stop SERVICE
```

Q: Restart service?
A:

```bash
systemctl restart SERVICE
```

Q: Enable service at boot?
A:

```bash
systemctl enable SERVICE
```

Q: Disable service at boot?
A:

```bash
systemctl disable SERVICE
```

---

## Logs (journalctl)

Q: Show last 20 system logs?
A:

```bash
journalctl -n 20
```

Q: Show last 20 SSH logs?
A:

```bash
journalctl -u ssh -n 20
```

Q: Show last 20 Apache logs?
A:

```bash
journalctl -u apache2 -n 20
```

Q: Show last 20 MySQL logs?
A:

```bash
journalctl -u mysql -n 20
```

Q: Show last 20 Cron logs?
A:

```bash
journalctl -u cron -n 20
```

---

## Watch Command

Q: Watch disk usage every 2 seconds?
A:

```bash
watch -n 2 df -h
```

Q: Watch uptime every 2 seconds?
A:

```bash
watch -n 2 uptime
```

---

## Service Meanings

SSH

```text
Remote access
Secure Shell
```

Apache2 / Nginx

```text
Web server
Website service
```

MySQL

```text
Database
Stores users, passwords, orders, products
```

Cron

```text
Scheduled jobs
Automatic tasks
```

---

## Troubleshooting Flow

Remote access broken:

```text
ssh
↓
systemctl status ssh
↓
journalctl -u ssh -n 20
↓
systemctl start ssh
↓
ss -tuln | grep :22
```

Website down:

```text
apache2
↓
systemctl status apache2
↓
journalctl -u apache2 -n 20
↓
systemctl start apache2
```

Login broken / orders missing:

```text
mysql
↓
systemctl status mysql
↓
journalctl -u mysql -n 20
↓
systemctl start mysql
```

Scheduled backup failed:

```text
cron
↓
systemctl status cron
↓
journalctl -u cron -n 20
↓
systemctl start cron
```
