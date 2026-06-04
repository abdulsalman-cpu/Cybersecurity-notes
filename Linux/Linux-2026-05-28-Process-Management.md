# Day 43 – Linux Process Management Notes

## Process Basics

### What is a Process?

A process is a running program.

Examples:

* chrome
* ssh
* nano
* ping
* sleep

Every running process gets a:

```bash
PID
```

PID = Process ID

---

## Important Commands

### Show Processes

```bash
ps
```

---

### Detailed Process View

```bash
ps -ef
```

* `-e` = every process
* `-f` = full details

Shows:

* USER
* PID
* PPID
* CPU
* COMMAND

---

### Search for Process

```bash
ps -ef | grep ping
```

Finds process by name.

Important:
`grep` itself appears in results.

---

### Investigate Exact PID

```bash
ps -fp PID
```

Example:

```bash
ps -fp 1234
```

Used to inspect exact process.

---

## Parent Process

```bash
PPID
```

PPID = Parent Process ID

Meaning:

* one process started another process

Example:

```text
parent process → child process
```

---

# top Command

Live process monitor.

Run:

```bash
top
```

Quit:

```bash
q
```

---

## Important top Columns

* PID
* USER
* %CPU
* %MEM
* TIME+
* COMMAND

---

## Process States

* `R` = Running
* `S` = Sleeping
* `Z` = Zombie

---

# Background Processes

Run process in background:

```bash
sleep 300 &
```

`&` = background

Terminal becomes free again.

---

## Example Background Processes

### sleep

```bash
sleep 500 &
```

---

### ping

```bash
ping google.com &
```

---

### yes

```bash
yes > /dev/null &
```

CPU-heavy process.

---

# Output Redirection

```bash
> /dev/null
```

Throws output away.

Linux black hole.

Example:

```bash
yes > /dev/null &
```

Without flooding terminal.

---

# CPU Monitoring

`yes > /dev/null &` can use:

```text
100% CPU
```

Seen inside:

```bash
top
```

---

# Kill Processes

## Normal Kill

```bash
kill PID
```

Example:

```bash
kill 1234
```

Sends:

```text
Signal 15
SIGTERM
```

Polite shutdown request.

Process can:

* cleanup
* save work
* close safely

---

## Force Kill

```bash
kill -9 PID
```

Sends:

```text
Signal 9
SIGKILL
```

Immediate forced stop.

Used for frozen/stuck processes.

---

# Important Rule

```text
kill     = polite stop
kill -9  = force stop
```

Admins usually try:

1. `kill PID`
2. `kill -9 PID` only if needed

---

# Kill from top

Inside `top`:

```text
k
```

Then enter:

* PID
* signal number

Default signal:

* 15

---

# Hidden Files Practice

Show hidden files:

```bash
ls -a
```

Hidden files start with:

```text
.
```

Example:

```text
.secretlog
.accesslog
.alert
```

---

# Permissions Practice

Example:

```bash
chmod 740 file
```

Meaning:

Owner:

* read
* write
* execute

Group:

* read

Others:

* no permissions

---

# Real Troubleshooting Workflow

```text
system slow
↓
top
↓
find high CPU process
↓
ps -ef | grep process
↓
ps -fp PID
↓
kill PID
↓
verify process stopped
```

---

# Commands Practiced Today

```bash
top
q
k
ps
ps -ef
ps -fp
grep
kill 15
kill -9
sleep
ping
yes
chmod
ls -a
ls -l
mkdir -p
touch
echo >
```
