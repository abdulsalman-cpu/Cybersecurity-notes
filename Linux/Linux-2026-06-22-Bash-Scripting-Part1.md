# Bash Day - Loops, Variables, and Exit Codes

## Variables

Store values in memory.

```bash
SERVER="web01"
STATUS="healthy"
COUNT=1
```

Print a variable:

```bash
echo "$SERVER"
```

Output:

```text
web01
```

---

## if / else

Check a condition.

```bash
if [ "$STATUS" = "healthy" ]
then
    echo "Online"
else
    echo "Offline"
fi
```

Output:

```text
Online
```

---

## while Loop

Repeat while a condition is true.

```bash
COUNT=1

while [ "$COUNT" -le 3 ]
do
    echo "$COUNT"

    COUNT=$((COUNT+1))
done
```

Output:

```text
1
2
3
```

---

## Loop Rules

Always check:

1. Starting Value
2. Condition
3. Increment / Decrement

Example:

```bash
COUNT=1
COUNT=$((COUNT+2))
```

Output:

```text
1
3
5
```

Example:

```bash
COUNT=5
COUNT=$((COUNT-2))
```

Output:

```text
5
3
1
```

---

## Comparison Operators

Less than or equal:

```bash
-le
```

Example:

```bash
while [ "$COUNT" -le 5 ]
```

Greater than or equal:

```bash
-ge
```

Example:

```bash
while [ "$COUNT" -ge 1 ]
```

---

## Variable Changes

Variables keep their value until changed.

Example:

```bash
STATUS="healthy"

STATUS="failed"

echo "$STATUS"
```

Output:

```text
failed
```

---

## Status Changes Inside Loop

```bash
COUNT=1
STATUS="healthy"

while [ "$COUNT" -le 3 ]
do
    if [ "$COUNT" -eq 2 ]
    then
        STATUS="failed"
    fi

    echo "$STATUS"

    COUNT=$((COUNT+1))
done
```

Output:

```text
healthy
failed
failed
```

Reason:

STATUS changed at COUNT=2 and remained failed.

---

## Exit Codes ($?)

Linux stores the result of the last command.

Success:

```text
0
```

Failure:

```text
Non-zero
```

Example:

```bash
ping google.com

echo $?
```

Output:

```text
0
```

Example:

```bash
ping fake-server

echo $?
```

Output:

```text
Non-zero
```

---

## Using Exit Codes

```bash
ping google.com

if [ $? -eq 0 ]
then
    echo "Server Online"
else
    echo "Server Offline"
fi
```

Output:

```text
Server Online
```

---

## Important Lessons Learned

* Read the starting value carefully.
* Loops stop when the condition becomes false.
* COUNT is usually one step past the limit after the loop ends.
* Variables keep their value until changed.
* Functions and loops use the current variable values.
* Read code from top to bottom.
* Do not rush; trace each step.

---

## Current Bash Progress

Completed:

* Variables
* echo
* read
* > and >>
* if / else
* while loops
* for loops
* Functions (basic)
* Variable tracking
* Loop tracking
* Exit Codes ($?) basic

Next Topics:

* More Exit Code Practice
* Function Arguments ($1)
* Arrays
* grep + Bash
* Real Admin Scripts
* Cron + Bash
