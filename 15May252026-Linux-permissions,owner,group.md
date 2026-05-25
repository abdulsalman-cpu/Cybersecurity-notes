# Day X - Linux Permissions, Owner, Group

## Permission Numbers

4 = r--
2 = -w-
1 = --x

7 = rwx
6 = rw-
5 = r-x
4 = r--
3 = -wx
2 = -w-
1 = --x
0 = ---

Examples:

755

Owner = rwx = 7
Group = r-x = 5
Others = r-x = 5

644

Owner = rw- = 6
Group = r-- = 4
Others = r-- = 4


## chmod

Purpose:
Change permissions

Examples:

chmod 755 file.txt
chmod 644 file.txt

Remember:

chmod = permissions


## chown

Purpose:
Change owner

Example:

sudo chown mike file.txt

Check:

ls -l file.txt

Example output:

-rw-rw-r-- 1 mike salman

mike = owner
salman = group

Remember:

chown = owner


## chgrp

Purpose:
Change group

Example:

sudo chgrp teachers file.txt

Check:

ls -l file.txt

Example output:

-rw-rw-r-- 1 salman teachers

salman = owner
teachers = group

Remember:

chgrp = group


## Group Create/Delete

Create group:

sudo groupadd teachers

Delete group:

sudo groupdel teachers


## Invalid Group Error

If:

chgrp kids file.txt

shows:

invalid group

Meaning:

Group does not exist

Fix:

sudo groupadd kids


## UID and GID Small Intro

Linux works with IDs underneath.

Example:

ali -> UID 1005
teachers -> GID 1008

If user/group deleted:

1005
1008

may show instead of names.


## Practice Tree

biglab
├── sales
│   ├── docs
│   │   └── client.txt
│   └── logs
├── hr
│   ├── docs
│   │   └── staff.txt
│   └── logs
├── it
│   ├── docs
│   └── logs
│       └── server.log
└── security
    ├── docs
    │   └── report.txt
    └── logs
        └── audit.log


## Today Summary

chmod = permissions
chown = owner
chgrp = group
