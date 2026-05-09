09may2026 cron crontab automation
cron crontab MIN HOUR DOM MON DOW CMD crontab -e

What is Cron?
Cron is a robot worker inside Linux.

The robot waits for time and does jobs automatically.

Examples:
- backup files
- clean temp files
- run programs
- automatic tasks

Think:
Cron = robot worker 🤖

--------------------------------------------------

What is Crontab?

Crontab is the robot's schedule paper.

You tell:
- WHEN to run
- WHAT to run

Think:
Crontab = robot notebook 📄

--------------------------------------------------

Crontab Format

MIN HOUR DOM MON DOW CMD

--------------------------------------------------

MIN
Minute

Example:
0

Means:
minute 0

--------------------------------------------------

HOUR
Hour

Example:
12

Means:
12 o'clock

--------------------------------------------------

DOM
Day Of Month

Example:
25

Means:
25th day of month

--------------------------------------------------

MON
Month

Example:
5

Means:
May

--------------------------------------------------

DOW
Day Of Week

Example:
1

Means:
Monday

--------------------------------------------------

CMD
Command/job to run

Example:
echo hello

--------------------------------------------------

What does * mean?

* = anything
* = every
* = I don't care

Example:

* * * * *

Means:
every minute

--------------------------------------------------

Example Cron Job

0 12 * * * echo hello

Means:
At 12:00 every day say hello

--------------------------------------------------

Another Example

0 */12 * * * cp -R /home/cmnatic/Documents /var/backups/

Means:
Copy backup every 12 hours

--------------------------------------------------

crontab -e

Used to edit cron jobs.

Command:
crontab -e

Think:
Open robot notebook

--------------------------------------------------

Nano Opens

Then Nano editor opens.

Example:

0 8 * * * echo goodmorning

Means:
Every day at 8 AM say goodmorning

--------------------------------------------------

Save and Exit Nano

Save:
Ctrl + O

Exit:
Ctrl + X

--------------------------------------------------

Real Examples

Run every minute:
* * * * * echo hello

--------------------------------------------------

Run every Sunday at 10:
0 10 * * 0 cleanup

--------------------------------------------------

Backup every night at 2 AM:
0 2 * * * backup command

--------------------------------------------------

Easy Memory Tricks

Cron = robot worker
Crontab = robot schedule
MIN = minute
HOUR = hour
DOM = day of month
MON = month
DOW = day of week
CMD = command/job
* = every/anything
crontab -e = edit robot notebook

--------------------------------------------------

Commands We Learned

crontab -e

--------------------------------------------------

Kid Examples

Mom says:
Every day at 7 AM clean room

Linux says:
0 7 * * * clean room

--------------------------------------------------

Tiny Practice

What is cron?
Robot worker

What is crontab?
Robot schedule paper

What does * mean?
Every / anything

What does this mean?

0 12 * * * echo hello

Answer:
At 12:00 every day say hello
