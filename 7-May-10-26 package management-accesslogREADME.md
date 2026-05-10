10may2026 maintaining your system
package management and logs

Package Management

Package management means installing, removing, and updating software.

Think:
Linux package management = app store for Linux

--------------------------------------------------

Package

A package is software/tool/app.

Examples:
- nano
- vim
- wget
- apache2
- nmap

Think:
package = app/tool

--------------------------------------------------

APT

apt is the package manager.

It helps install, remove, and update packages.

Think:
apt = app store worker

--------------------------------------------------

sudo

sudo gives admin/boss permission.

Some commands need sudo.

Think:
sudo = boss power

Example:
sudo apt update

--------------------------------------------------

Repository

Repository is where Linux gets software from.

Think:
repository = software warehouse

--------------------------------------------------

apt update

Command:
sudo apt update

Meaning:
Refresh/check the software list.

Think:
Check what apps are available.

--------------------------------------------------

apt upgrade

Command:
sudo apt upgrade

Meaning:
Upgrade installed packages.

Think:
Update your installed apps.

--------------------------------------------------

apt install

Command:
sudo apt install package-name

Example:
sudo apt install nano

Meaning:
Install software.

--------------------------------------------------

apt remove

Command:
sudo apt remove package-name

Example:
sudo apt remove nano

Meaning:
Remove/uninstall software.

--------------------------------------------------

GPG Key

GPG key is a trust stamp.

It helps Linux know software is from a trusted source.

Think:
GPG key = real/not fake software stamp

--------------------------------------------------

Important Note

TryHackMe machines may not allow package practice because:
- no internet
- no sudo permission
- package repositories may not work

We will practice this deeply later on Kali.

--------------------------------------------------

Logs

Logs are computer diary files.

They record what happened on the system.

Think:
logs = computer history notebook

--------------------------------------------------

Where logs are stored

Path:
/var/log

Think:
/var/log = records room

--------------------------------------------------

Why logs matter

Logs help admins:
- fix problems
- check errors
- see logins
- catch suspicious activity
- investigate attacks
- monitor services

--------------------------------------------------

Common Logs

auth.log

Authentication/login log.

Shows:
- logins
- failed passwords
- sudo attempts

Think:
auth.log = login diary

--------------------------------------------------

syslog

General system log.

Shows system activity.

Think:
syslog = system diary

--------------------------------------------------

apache2 logs

Website server logs.

Path:
/var/log/apache2

Important files:
access.log
error.log

--------------------------------------------------

access.log

Shows website visitors.

Can show:
- visitor IP address
- page/file visited
- browser/user agent
- time of visit

Think:
access.log = website visitor diary

--------------------------------------------------

error.log

Shows website/server errors.

Think:
error.log = website problem diary

--------------------------------------------------

Useful Log Commands

Go to log folder:
cd /var/log

List logs:
ls

Go to Apache logs:
cd /var/log/apache2

Read file:
cat filename

Example:
cat access.log.1

Search inside logs:
grep word filename

Example:
grep failed auth.log

--------------------------------------------------

What we practiced

We went to:
/var/log

We checked apache logs:
/var/log/apache2

We found:
access.log.1

We read it:
cat access.log.1

We found visitor IP:
10.9.232.111

We found accessed file:
catsanddogs.jpg

--------------------------------------------------

Easy Memory Tricks

package = app/tool
apt = app store worker
sudo = boss permission
repository = software warehouse
apt update = refresh app list
apt upgrade = update installed apps
apt install = install app
apt remove = uninstall app
GPG key = trust stamp

logs = computer diary
/var/log = records room
auth.log = login diary
syslog = system diary
apache2 = website log folder
access.log = visitor diary
error.log = problem diary
grep = search word
cat = read file

--------------------------------------------------

Commands We Learned

sudo apt update
sudo apt upgrade
sudo apt install package-name
sudo apt remove package-name

cd /var/log
ls
cd apache2
cat access.log.1
grep word filename

--------------------------------------------------

Important Practice Reminder

Later on Kali, practice package management deeply:
sudo apt update
sudo apt install
sudo apt remove
sudo apt upgrade

Also practice logs deeply:
cd /var/log
cat logs
grep logs
search auth.log
search apache logs
find IP addresses
find accessed files
