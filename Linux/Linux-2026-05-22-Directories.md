Day 37 - Linux + Python Notes
Date: 2026-05-22

1. Linux Root Folders
---------------------

/ = whole machine

/home = users files
- pictures
- downloads
- movies
- desktop
- personal files

/etc = settings/config
- DNS settings
- network settings
- SSH settings
- users
- passwords
- services

/usr = programs warehouse
- commands
- applications
- libraries

/usr/bin
- command warehouse
- ls
- cp
- mv
- grep
- ssh
- mkdir
- rm

/var = changing data
- logs
- cache
- mail
- web data

/var/log
- logs live here

/dev = hardware as files
Examples:
- hard drive
- USB
- terminal

/proc = live system information
- processes
- CPU
- RAM

/sys = hardware controls/info

/tmp = temporary files

/root = boss user's home folder

/boot = startup files

Boot process:
EFI
↓
GRUB
↓
vmlinuz (kernel/brain)
↓
initrd
↓
Linux starts

vmlinuz
- Linux kernel
- main brain


2. Paths
---------

Absolute path:
Starts from root

Examples:

/home/salman
/etc
/boot

Relative path:
Starts from current location

Examples:

home
boot
etc


3. Command Pattern
------------------

command → option → value → target

Examples:

tree -L 1 /
ls -l /home
grep -i hello notes.txt

tree
- draw tree

-L
- level option

1
- level value

/
- target


4. Permissions + File Types
----------------------------

-rwxr-xr-x

First character:

- = normal file/program
d = directory
l = symbolic link
c = character device
b = block device

Permissions:

r = read
w = write
x = execute


5. Symbolic Links
-----------------

Example:

ls -> ../lib/cargo/bin/coreutils/ls

Meaning:

ls is shortcut
points to real program


6. Python Day 1
---------------

Enter Python:

python3

Exit Python:

exit()

Python prompt:

>>>

print()

Meaning:
show on screen

Example:

print("Hello Salman")

Variables:

name="Abdullah"

print(name)

Meaning:

Create box
Put value inside
Show value

Import toolbox:

import datetime

Current time:

print(datetime.datetime.now())

Breakdown:

datetime
= toolbox

datetime
= tool inside toolbox

now()
= use tool

print()
= show result

() means:
run/use action


7. Big Idea Today
-----------------

Linux knowledge
+
Python helper
=
Find problems faster

Python can help:

- check CPU
- check RAM
- read logs
- find errors
- automate tasks

Python = assistant
You = mechanic
Linux = machine
