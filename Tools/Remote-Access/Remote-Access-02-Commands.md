# SSH / SSH Keys / SCP / SFTP Commands

## SSH

Connect to server
```bash
ssh user@IP
```

Connect with specific port
```bash
ssh -p 2222 user@IP
```

Verbose mode (show details)
```bash
ssh -v user@IP
```

More verbose
```bash
ssh -vv user@IP
ssh -vvv user@IP
```

Use key file
```bash
ssh -i id_rsa user@IP
```

--------------------------------------------------

## SSH Keys

Create key pair
```bash
ssh-keygen
```

List SSH files
```bash
ls -l ~/.ssh
```

View public key
```bash
cat ~/.ssh/id_rsa.pub
```

View known servers
```bash
cat ~/.ssh/known_hosts
```

View allowed keys
```bash
cat ~/.ssh/authorized_keys
```

Copy public key to server
```bash
ssh-copy-id user@IP
```

--------------------------------------------------

## SCP

Upload file
```bash
scp file.txt user@IP:/home/user/
```

Download file
```bash
scp user@IP:/home/user/file.txt .
```

Copy folder
```bash
scp -r folder user@IP:/home/user/
```

Use key
```bash
scp -i id_rsa file.txt user@IP:/home/user/
```

Use different port
```bash
scp -P 2222 file.txt user@IP:/home/user/
```

--------------------------------------------------

## SFTP

Connect
```bash
sftp user@IP
```

Use key
```bash
sftp -i id_rsa user@IP
```

List files
```bash
ls
```

Show current folder
```bash
pwd
```

Change folder
```bash
cd folder1
```

Upload file
```bash
put file.txt
```

Download file
```bash
get file.txt
```

Exit
```bash
exit
```

--------------------------------------------------

## Easy Memory

SSH      = enter computer
SSH Keys = digital key
SCP      = postman
SFTP     = file office
