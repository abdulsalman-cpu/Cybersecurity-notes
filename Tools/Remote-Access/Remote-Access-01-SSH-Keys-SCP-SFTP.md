# May 18, 2026
# SSH / SSH Keys / SCP / SFTP Notes

## SSH
SSH = Secure Shell

Purpose:
- Login to another computer/server remotely

Can:
- Enter remote computer
- Run commands
- Manage server
- Check logs
- Work remotely

Cannot:
- Automatically give admin power
- Automatically copy files

Example:
```bash
ssh user@10.10.10.10
```

Memory:
SSH = enter house

--------------------------------------------------

## SSH Keys
SSH Keys = Secure Shell Keys

Purpose:
- Replace password login

Files:
```text
id_rsa      = private key (secret)
id_rsa.pub  = public key (share)
```

Can:
- Login without password
- Increase security
- Automate login

Cannot:
- Give extra permissions
- Transfer files by itself

Example:
```bash
ssh -i id_rsa user@10.10.10.10
```

Memory:
SSH Keys = digital key

Flow:

Your private key
        ↓
Server checks public key
        ↓
Access allowed

--------------------------------------------------

## SCP
SCP = Secure Copy Protocol

Purpose:
- Copy files between computers

Can:
- Upload files
- Download files
- Copy folders (-r)

Cannot:
- Open Linux shell
- Run commands
- Browse interactively

Examples:

Upload:
```bash
scp notes.txt user@10.10.10.10:/home/user/
```

Download:
```bash
scp user@10.10.10.10:/home/user/file.txt .
```

Folder:
```bash
scp -r folder1 user@10.10.10.10:/home/user/
```

Memory:
SCP = postman

Postman:
- Pickup package
- Deliver package
- Leave

--------------------------------------------------

## SFTP
SFTP = SSH File Transfer Protocol

Purpose:
- Browse and transfer files

Can:
- Browse folders
- Upload files
- Download files
- Use ls
- Use cd

Cannot:
- Give full shell
- Run Linux commands

Example:
```bash
sftp user@10.10.10.10
```

Commands:
```bash
ls
cd
put notes.txt
get file.txt
```

Memory:
SFTP = file office / clerk office

--------------------------------------------------

## Easy Memory Sheet

SSH      = enter house
SSH Keys = digital key
SCP      = postman
SFTP     = file office

--------------------------------------------------

## Permission Reminder

SSH does not give power

SSH = access
Permissions = power

Examples:

Normal user:
- Read files
- Create files
- Run programs

Root:
- Install software
- Add users
- Restart services
- Full control

--------------------------------------------------

## Commands We Used Today

```bash
nmap -p 22 10.65.178.11
ssh user@IP
ssh -v user@IP
ssh-keygen
ls -l ~/.ssh
cat ~/.ssh/id_rsa.pub
```
