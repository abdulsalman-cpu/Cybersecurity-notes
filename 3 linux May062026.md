# Day 2-10 — Linux Notes

## Navigation
```bash
pwd
ls
ls -a
ls -l
cd folder
cd ..
cd ~
```

## Files & Folders
```bash
mkdir test
touch file.txt
touch folder/file.txt
```

## Write Text
```bash
echo hello > file.txt
echo world >> file.txt
cat file.txt
```

## Copy & Move
```bash
cp file.txt copy.txt
mv copy.txt moved.txt
mv file.txt folder/
```

## Delete
```bash
rm file.txt
rm -r folder
rm -rf folder
```

## Search
```bash
grep hello file.txt
grep -i hello file.txt
grep -rin hello folder/
find ~ -name "file.txt"
```

## Operators
```bash
mkdir lab && cd lab
sleep 5 &
jobs
```

## Permissions
```bash
chmod 600 secret.txt
chmod 644 notes.txt
chmod 755 script.sh
```

## Permission Numbers
```text
7 = rwx
6 = rw-
5 = r-x
4 = r--
0 = ---
```

## SSH
```bash
ssh user@ip
```

## Relative Paths
```text
.. = go back one folder
/ = go inside folder<img width="738" height="751" alt="Screenshot 2026-05-06 at 10 32 07 AM" src="https://github.com/user-attachments/assets/087d2109-ace5-450c-9aff-3ec1c9e2f46f" />
<img width="731" height="750" alt="Screenshot 2026-05-06 at 10 31 35 AM" src="https://github.com/user-attachments/assets/3c5e05c2-6282-4056-a57b-857fc791b7d9" />
<img width="583" height="748" alt="Screenshot 2026-05-06 at 10 29 55 AM" src="https://github.com/user-attachments/assets/23bfa452-d1d9-4253-8f6e-89a00d538666" />

```

## Example Paths
```bash
../../teachers/math.txt
lab/office/finance/reports/budget.txt
```
