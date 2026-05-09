09may2026 processes 101
ps ps aux top kill systemctl

What is a Process?
A process is a running program on the computer.

Examples:
- Chrome
- YouTube
- Terminal
- Calculator

Computer = Big city
Processes = Workers inside city

--------------------------------------------------

PID (Process ID)

Every process gets an ID number.

Example:
PID 100
PID 101
PID 102

Numbers keep increasing.

--------------------------------------------------

ps

Shows your running processes.

Command:
ps

Think:
ps = see workers in your room

--------------------------------------------------

ps aux

Shows ALL processes on system.

Command:
ps aux

Think:
ps = your room
ps aux = whole building

--------------------------------------------------

top

Shows live running processes.

Command:
top

Shows:
- CPU usage
- RAM usage
- Busy programs

Think:
top = live CCTV camera

Quit:
q

--------------------------------------------------

kill

Stops a process.

Command:
kill PID

Example:
kill 1337

--------------------------------------------------

Signals

SIGTERM
Clean stop.
"Please close nicely."

SIGKILL
Force stop.
"STOP NOW!"

SIGSTOP
Pause process.

--------------------------------------------------

systemd

Main boss process of Linux.

Starts when computer boots.

systemd starts other programs.

Think:
systemd = boss manager

--------------------------------------------------

Child Process

A process started by another process.

Example:

systemd
 └── apache2

apache2 = child process

--------------------------------------------------

systemctl

Controls services.

Format:
systemctl OPTION SERVICE

--------------------------------------------------

Start service

systemctl start apache2

--------------------------------------------------

Stop service

systemctl stop apache2

--------------------------------------------------

Enable service on boot

systemctl enable apache2

--------------------------------------------------

Disable service on boot

systemctl disable apache2

--------------------------------------------------

Check service status

systemctl status apache2

--------------------------------------------------

Foreground Process

Runs in front of terminal.

Example:
echo hello

You see output immediately.

--------------------------------------------------

Background Process

Runs behind terminal.

Example:
echo hello &

& = send process to background

Useful for:
- Downloads
- Scripts
- Copying files

--------------------------------------------------

Ctrl + Z

Pauses/backgrounds process.

Think:
Pause button

--------------------------------------------------

fg

Brings process back to foreground.

Command:
fg

Think:
Bring worker back

--------------------------------------------------

Easy Memory Tricks

Processes = workers
PID = worker ID
ps = workers in your room
ps aux = workers in building
top = CCTV camera
kill = fire worker
SIGTERM = leave nicely
SIGKILL = get out now
systemd = main boss
systemctl = talk to boss
& = send to background
fg = bring back
Ctrl + Z = pause

--------------------------------------------------

Commands We Learned

ps
ps aux
top
kill PID
systemctl start SERVICE
systemctl stop SERVICE
systemctl enable SERVICE
systemctl disable SERVICE
systemctl status SERVICE
fg

--------------------------------------------------

Small Practice

See your processes:
ps

See all processes:
ps aux

Open live process viewer:
top

Quit top:
q

Run command in background:
echo hello &

Bring process back:
fg
