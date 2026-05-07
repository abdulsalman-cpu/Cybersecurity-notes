# Linux Notes — May 7

# Pipes `|`

A pipe takes the output from one command and sends it into another command.

## Basic Syntax
```bash
command1 | command2
```

Think:
- Left side = gives data
- Right side = uses data

---

# Pipe Examples

## Show files one page at a time
```bash
ls | less
```

## Search for a word
```bash
cat file.txt | grep hello
```

## Count lines
```bash
cat file.txt | wc -l
```

## Show files/folders with a specific word
```bash
ls | grep test
```

---

# Difference Between `|` and `&&`

## Pipe `|`
Passes output into another command.

```bash
cat file.txt | grep hello
```

## AND `&&`
Runs second command only if first command succeeds.

```bash
mkdir test && cd test
```

---

# Important Linux Directories

Linux starts from `/`

```bash
/
```

This is called the root directory.

---

# `/etc`

Stores system configuration files.

Think:
> Electric/control room of a building

Examples:
- passwords
- network settings
- system configs

## Command
```bash
ls /etc
```

---

# `/var`

Stores changing data.

Think:
> Storage room for changing information

---

# `/var/log`

Stores logs.

Think:
> Clerk/security office writing events down

Examples:
- login logs
- errors
- system activity

## Command
```bash
ls /var/log
```

---

# `/tmp`

Stores temporary files.

Think:
> Temporary mail room or waiting room

Files here are often deleted automatically later.

## Command
```bash
ls /tmp
```

---

# `/root`

Home directory of the root user (administrator).

Think:
> Boss office

## Command
```bash
ls /root
```

You may see:
```bash
Permission denied
```

because normal users usually cannot access it.

---

# Easy Memory Trick

| Directory | Easy Memory |
|---|---|
| `/etc` | Electric/control room |
| `/var/log` | Clerk/security office |
| `/tmp` | Temporary mail room |
| `/root` | Boss office |

---

# Commands Practiced

```bash
ls /etc
ls /var/log
ls /tmp
ls /root
```

---

# What We Learned

- Pipe `|` sends output to another command
- `&&` runs next command only if first succeeds
- Linux has important system folders
- `/var/log` stores logs
- `/tmp` stores temporary files
- `/root` belongs to admin user
- `/etc` stores configuration files
