09may2026 processes 101

ps
- Shows your running processes
- Think: workers in your room

Example:
ps

--------------------------------------------------

ps aux
- Shows ALL processes on system
- Includes system/root processes

Think:
ps = your room
ps aux = whole building

Example:
ps aux

--------------------------------------------------

top
- Live view of processes
- Shows CPU and RAM usage
- Updates in real-time

Think:
top = CCTV camera for computer

Example:
top

Quit:
q

--------------------------------------------------

kill
- Stops a process

Example:
kill 1337

Signals:
SIGTERM = clean stop
SIGKILL = force stop
SIGSTOP = pause process

--------------------------------------------------

systemctl
- Controls services using systemd

Format:
systemctl OPTION SERVICE

Examples:

Start service:
systemctl start apache2

Stop service:
systemctl stop apache2

Enable on boot:
systemctl enable apache2

Disable on boot:
systemctl disable apache2

Check status:
systemctl status apache2

--------------------------------------------------

Background and Foreground

Foreground:
Runs in front of terminal

Example:
echo hello

Background:
Runs behind terminal

Example:
echo hello &

& = send process to background

Ctrl + Z
- Pause/background current process

fg
- Bring process back to foreground

Example:
fg

--------------------------------------------------

Easy Memory Tricks

Processes = workers
PID = worker ID
ps = workers in your room
ps aux = workers in whole building
top = live CCTV
kill = stop worker
systemd = main boss
systemctl = talk to boss
& = background
fg = bring back
Ctrl + Z = pause
