# Linux May 8 2026

## Nano

Nano is a simple Linux text editor.

### Open Nano

```bash
nano myfile.txt
```

### Save File
Press:

```text
CTRL + O
```

Then press ENTER.

### Exit Nano
Press:

```text
CTRL + X
```

### Nano Practice

```bash
nano notes.txt
```

Write:

```text
Hello Linux
I am learning Nano
```

Save and exit.

Read file:

```bash
cat notes.txt
```

---

# VIM

VIM is a more advanced Linux text editor.

### Open VIM

```bash
vim file.txt
```

### Enter Insert Mode

Press:

```text
i
```

Now you can type.

### Exit Insert Mode

Press:

```text
ESC
```

### Save and Exit

```text
:wq
```

Then press ENTER.

### Exit Without Saving

```text
:q!
```

### VIM Practice

```bash
vim test.txt
```

Press:

```text
i
```

Write:

```text
Linux is fun
```

Press:

```text
ESC
```

Type:

```text
:wq
```

---

# wget

wget downloads files or webpages from servers/websites.

### Basic Syntax

```bash
wget WEBSITE
```

### Example

```bash
wget https://example.com
```

### Check Downloaded Files

```bash
ls
```

### Read File

```bash
cat example.com | head
```

### What wget Does

- Connects to server
- Downloads webpage/file
- Saves locally

---

# Commands Learned So Far

## Navigation

```bash
pwd
ls
cd
```

## Create Files/Folders

```bash
mkdir
touch
echo
```

## Copy / Move

```bash
cp
mv
```

## Delete

```bash
rm
rm -r
```

## Read Files

```bash
cat
```

## Search

```bash
grep
find
```

## Permissions

```bash
chmod
```

### Permission Numbers

```text
r = 4
w = 2
x = 1
```

### Example

```bash
chmod 755 file.txt
```

755 means:

```text
rwx r-x r-x
```

---

# Practice Section

## Practice 1

Create a folder named:

```text
lab
```

Go inside it.

Create a file named:

```text
notes.txt
```

Write text inside using Nano.

Read file using:

```bash
cat notes.txt
```

---

# Practice 2

Create folder:

```text
test
```

From outside the folder create file:

```text
inside.txt
```

Write:

```text
Linux Practice
```

inside it.

---

# Practice 3

Create:

```text
folder1
```

Create file:

```text
alpha.txt
```

Copy it.

Move copied file outside folder.

Delete copied file.

---

# Practice 4

Create 3 files.

Search one using:

```bash
find . -name filename
```

Search text using:

```bash
grep word file.txt
```

---

# Practice 5

Open VIM.

Write 2 lines.

Save and exit.

Open Nano.

Write 2 lines.

Save and exit.

---

# Reminder

Linux becomes easy with repetition.

Practice same commands daily until fingers remember automatically.
