# Linux Notes - Last Few Days

## Users & Groups

Create User:
sudo useradd username

Set Password:
sudo passwd username

Create Group:
sudo groupadd groupname

Add User to Group:
sudo usermod -aG groupname username

Verify User:
id username

Example:
sudo groupadd accountants
sudo useradd hamza
sudo passwd hamza
sudo usermod -aG accountants hamza
id hamza

--------------------------------------------------

## SSH Troubleshooting

Check SSH:
systemctl status ssh

Check SSH Logs:
journalctl -u ssh -n 20

Check Port 22:
ss -tulpn | grep :22

Start SSH:
systemctl start ssh

Stop Dropbear:
systemctl stop dropbear

Firewall Status:
ufw status

Allow SSH:
ufw allow 22/tcp

--------------------------------------------------

## Apache Troubleshooting

Check Apache:
systemctl status apache2

Apache Logs:
journalctl -u apache2 -n 20

Check Port 80:
ss -tulpn | grep :80

Stop Nginx:
systemctl stop nginx

Start Apache:
systemctl start apache2

Verify Apache:
systemctl status apache2

--------------------------------------------------

## MySQL Troubleshooting

Check MySQL:
systemctl status mysql

MySQL Logs:
journalctl -u mysql -n 20

Start MySQL:
systemctl start mysql

Verify:
systemctl status mysql

--------------------------------------------------

## Storage

Show Disks & Partitions:
lsblk

Filesystem Usage:
df -h

Filesystem Usage + Type:
df -Th

Find Large Top-Level Folder:
du -sh /*

Find Large Folder in /var:
du -sh /var/*

Find Large Log File:
du -sh /var/log/*

Read Last 20 Lines:
tail -n 20 app.log

Safe Log Cleanup:
truncate -s 0 app.log

Verify Space:
df -h

--------------------------------------------------

## Troubleshooting Logic

IP Works + Hostname Fails
= DNS

HTTP Works + HTTPS Fails
= SSL/TLS

Europe Slow + USA Fast
= Network / Routing

Every Friday Same Time
= Cron Job / Scheduled Task

Problem Started After Update
= Recent Change

RAM Keeps Growing
= Memory Leak

Uploads Fail
= Storage / Permissions

Website Slow But Services Healthy
= Network / Backend / Application Investigation

--------------------------------------------------

## New Commands Learned

lsblk
df -Th
groupadd
usermod -aG
id
truncate -s 0

--------------------------------------------------

## Mindset

Problem
↓
Which Layer?
↓
Investigate
↓
Evidence
↓
Fix
↓
Verify
