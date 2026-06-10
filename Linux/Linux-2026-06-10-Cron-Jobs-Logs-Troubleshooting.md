# Linux Learning Notes - Cron Jobs Part 2 + Logs Deep Dive

## Troubleshooting Method

Problem
↓
Pattern
↓
Suspicion
↓
Command
↓
Evidence
↓
Root Cause

---

## Cron Jobs

List cron jobs:

crontab -l

Edit cron jobs:

crontab -e

Examples:

0 2 * * * = 2:00 AM daily

30 2 * * * = 2:30 AM daily

15 4 * * * = 4:15 AM daily

---

## Error Message Dictionary

Authentication failed
↓
Identity problem

Permission denied
↓
Linux permissions problem

Access denied
↓
Account access problem

Operation not permitted
↓
Privilege/permission problem

Connection timed out
↓
Network problem

Host not found
↓
DNS or hostname problem

Name or service not known
↓
DNS or hostname problem

No such file or directory
↓
Wrong path or missing file

No space left on device
↓
Disk full

Disk quota exceeded
↓
User storage limit reached

Read-only file system
↓
Cannot write to storage

Too many open files
↓
Open-file/resource limit reached

Cannot allocate memory
↓
RAM/memory problem

Segmentation fault
↓
Program crashed

Broken pipe
↓
Communication/connection interrupted

---

## Key Lesson

Do not jump directly to commands.

Think:

Error Message
↓
Category
↓
Suspicion
↓
Investigation

The goal is not to memorize commands.

The goal is to recognize patterns and categorize problems quickly.
