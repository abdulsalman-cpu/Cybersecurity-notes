## Bash Scripting Fundamentals (Part 1)

### Goal

Learn Bash scripts slowly by understanding every line instead of memorizing.

---

## Script Header

### Shebang

```bash
#!/bin/bash
```

Purpose:

* Tells Linux to run the script using Bash.
* First line of most Bash scripts.

---

## Variables

### Server Variable

```bash
SERVER="web01"
```

* `SERVER` = variable name
* `web01` = value

Rules:

Correct:

```bash
SERVER="web01"
```

Wrong:

```bash
SERVER = "web01"
SERVER ="web01"
SERVER= "web01"
```

No spaces around `=`.

---

### Date Variable

```bash
DATE=$(date)
```

Purpose:

* Runs the `date` command.
* Stores output in variable `DATE`.

Example:

```bash
echo $DATE
```

Output:

```text
Tue Jun 17 2026
```

---

### Log File Variable

```bash
LOGFILE="/tmp/admin_check.log"
```

Purpose:

* Stores path to log file.
* Makes scripts easier to manage.

Example:

```bash
echo $LOGFILE
```

Output:

```text
/tmp/admin_check.log
```

---

## Echo Command

```bash
echo "Hello"
```

Purpose:

* Prints text to screen.

Example:

```bash
echo "Server: $SERVER"
```

Output:

```text
Server: web01
```

Important:

```bash
$SERVER
```

means:

"Show value stored in variable SERVER."

---

## System Information Commands

### Current User

```bash
whoami
```

Purpose:

* Shows current logged-in user.

Example:

```text
salman
```

or

```text
root
```

---

### Hostname

```bash
hostname
```

Purpose:

* Shows computer/server name.

Example:

```text
web01
db01
backup01
```

---

### Uptime

```bash
uptime
```

Purpose:

* Shows how long system has been running.

Example:

```text
up 5 days
```

Admin Thinking:

* Long uptime = system stable
* Recent reboot = investigate changes

---

## Storage Commands

### Disk Usage

```bash
df -h
```

Purpose:

* Shows disk size and usage.

Check:

```text
Size
Used
Avail
Use%
```

Troubleshooting:

```text
100% usage = Storage Issue
```

---

### Directory Usage

```bash
du -sh /tmp /var /home
```

Purpose:

* Shows size of specific directories.

Example:

```text
500M /tmp
4G   /var
2G   /home
```

Troubleshooting:

If disk is full:

```bash
df -h
```

Then find large directory:

```bash
du -sh /var
```

---

## Memory Command

```bash
free -h
```

Purpose:

* Shows RAM usage.

Check:

```text
Total
Used
Free
```

Troubleshooting:

Low free memory may cause:

```text
Out of Memory
Application crashes
Slow websites
```

---

## Process Command

```bash
ps aux | head
```

Purpose:

* Shows running processes.

Concept Learned:

```bash
|
```

Pipe

Meaning:

* Output from first command
* Becomes input to second command

Example:

```bash
ps aux | head
```

Shows first few running processes.

---

## Network Command

```bash
ping -c 2 google.com
```

Purpose:

* Tests network connectivity.
* Tests DNS resolution.

Learned:

```bash
-c 2
```

means:

```text
Send 2 pings then stop.
```

---

## Troubleshooting Concepts Learned

### Permission Denied

Example:

```text
Permission denied
```

Think:

```text
Permissions Issue
```

Possible Causes:

* User permissions
* Group permissions
* Ownership issues
* Requires sudo

---

### DNS Issue

Example:

```bash
ping 8.8.8.8
```

Works

But:

```bash
ping google.com
```

Fails

Think:

```text
DNS Issue
```

Because names must be translated into IP addresses.

---

## Script Successfully Executed

Script checked:

* Current User
* Hostname
* Uptime
* Disk Usage
* Memory Usage
* Running Processes
* Network Connectivity
* Directory Sizes

Result:

First Linux Admin Health Check Script completed successfully.

---

## Next Topic

Bash Decision Making

```bash
if
then
else
fi
```

Example:

```bash
if ping works
then
    print ONLINE
else
    print OFFLINE
fi
```

Goal:
Learn how scripts make decisions like real Linux admin automation.
