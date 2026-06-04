# Day: Processes Part 1

## Process
- Process = running program/task

## Process Commands

ps
- Show current terminal processes
- Think: picture/snapshot

ps -e
- Show all system processes

ps -ef
- Show all processes with full details

top
- Live process monitor
- Think: live camera

Exit top:
q

## Pipe

|
- Send output from one command to another command

Example:

ps -ef | grep ping

Meaning:

ps -ef
↓
show all processes

|
↓
send output

grep ping
↓
search for "ping"

## Investigating Processes

ps -fp PID

Meaning:
- Show full details for specific process ID

Example:

ps -fp 4879

Output example:

USER   PID   PPID   CMD
salman 4879 4870    ping 8.8.8.8

## Important Fields

USER
- Who started process

PID
- Process ID
- Unique process number

PPID
- Parent Process ID
- Process that started current process

CMD
- Command/process name

TTY
- Terminal session

TIME
- CPU time used

## Process States

R
- Running

S
- Sleeping

I
- Idle

## Process Investigation Flow

Find process:

ps -ef | grep process_name

Example:

ps -ef | grep ping

Find process details:

ps -fp PID

Find parent:

ps -fp PPID

Example:

ps -ef | grep ping
        ↓
PID = 4879
PPID = 4870
        ↓
ps -fp 4870
        ↓
bash

## Real Process Examples

sleep
- Waits

nano
- Waits for keyboard input

ping
- Sends network packets

tail -f
- Watches file changes live

bash
- Shell that starts commands

ptyxis
- Terminal application

gnome-shell
- Desktop environment

## Remember

PID = me

PPID = who started me

ps = picture

top = live camera
