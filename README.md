# Day 2-10 — Linux Fundamentals Notes

# Navigation

## Show Current Directory
```bash
pwd
```

## List Files/Folders
```bash
ls
```

## Show Hidden Files
```bash
ls -a
```

## Long Listing
```bash
ls -l
```

## Human Readable Output
```bash
ls -lh
```

## Go Into Folder
```bash
cd foldername
```

## Go Back One Folder
```bash
cd ..
```

## Go Home
```bash
cd ~
```

---

# Creating Files & Folders

## Make Folder
```bash
mkdir test
```

## Make Multiple Folders
```bash
mkdir folder1 folder2
```

## Make File
```bash
touch file.txt
```

## Make File From Outside Folder
```bash
touch folder/file.txt
```

---

# Writing Into Files

## Write Text (overwrite)
```bash
echo hello > file.txt
```

## Append Text
```bash
echo world >> file.txt
```

## Show File Contents
```bash
cat file.txt
```

---

# Copy & Move

## Copy File
```bash
cp file1.txt copy.txt
```

## Move/Rename File
```bash
mv copy.txt moved.txt
```

## Move File Into Folder
```bash
mv file.txt folder/
```

---

# Remove Files & Folders

## Delete File
```bash
rm file.txt
```

## Delete Folder
```bash
rm -r folder
```

## Force Delete
```bash
rm -rf folder
```

---

# Searching

## Search Word
```bash
grep hello file.txt
```

## Ignore Upper/Lower Case
```bash
grep -i hello file.txt
```

## Recursive Search
```bash
grep -rin hello folder/
```

---

# Operators

## Run Next Command If First Works
```bash
mkdir lab && cd lab
```

## Run In Background
```bash
sleep 5 &
```

## Show Background Jobs
```bash
jobs
```

---

# Permissions

## Permission Numbers

| Number | Meaning |
|---|---|
| 4 | Read |
| 2 | Write |
| 1 | Execute |

---

# Common Permission Values

| Number | Permission |
|---|---|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |

---

# Change Permissions

## Example
```bash
chmod 640 secret.txt
```

Meaning:
- Owner = read/write
- Group = read
- Others = no permission

---

# Permission Example

```bash
-rw-r-----
```

Breakdown:
- Owner = rw-
- Group = r--
- Others = ---

---

# Helpful Flags

| Flag | Meaning |
|---|---|
| -a | Show hidden files |
| -l | Long listing |
| -h | Human readable |
| -r | Recursive |
| -i | Ignore case |
| -n | Show line numbers |

---

# Help Commands

## Command Help
```bash
ls --help
```

## Manual Pages
```bash
man ls
```
