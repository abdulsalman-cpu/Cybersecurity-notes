Day 41 - Linux Processes Notes

What is a process?
- Process = running worker/program
- Example:
  - bash
  - sshd
  - firefox
  - systemd

Commands

ps
- Show current terminal processes only

ps -e
- Show all processes

ps -ef
- Show all processes with full details

Columns

PID
- Process ID
- Worker ID

PPID
- Parent Process ID
- Boss/parent worker ID

UID
- Owner of process

CMD
- Process/program name

Examples

bash PID = 1000
firefox PID = 2000

firefox:
PID = 2000
PPID = 1000

Meaning:
bash started firefox

Parent → Child

systemd
↓
sshd
↓
bash
↓
ps
↓
grep

Process examples

sshd
- SSH service
- Waits for remote connections

gsd-keyboard
- Keyboard helper

gsd-media-keys
- Brightness
- Volume
- Media keys

gsd-power
- Power/Battery manager

gsd-print-notifications
- Printer notifications

gsd-sharing
- Sharing helper

Pipes with grep

ps -ef | grep ssh
- Show SSH processes only

ps -ef | grep bash
- Show bash process

ps -ef | grep systemd
- Show systemd process

ps -ef | grep kworker
- Show worker processes

grep -v
- Exclude/remove text

Example:

ps -ef | grep ssh | grep -v grep

Meaning:
Show ssh processes
Remove grep line itself

Today's idea

Files = things sitting on disk

Processes = things alive right now
