# OSI Model 

The OSI (Open Systems Interconnection) model explains how data moves through a network using 7 layers.
It helps identify where attacks happen and how to defend them.

## OSI Layers Overview

| Layer | Name         | Function                 | Common Attacks               |
|------|--------------|--------------------------|------------------------------|
| 7    | Application  | User interaction         | SQLi, XSS                    |
| 6    | Presentation | Encryption/format        | Malware in encrypted traffic |
| 5    | Session      | Connection management    | Session hijacking            |
| 4    | Transport    | Data delivery (TCP/UDP)  | Port scanning                |
| 3    | Network      | IP routing               | IP spoofing, DDoS            |
| 2    | Data Link    | MAC address              | MAC spoofing                 |
| 1    | Physical     | Hardware                 | Wire damage, tapping         |

## Why It Matters

- Identify where an attack is happening
- Apply the correct defense
- Troubleshoot network and security issues
---

## OSI Model (Questions and Answers)

### What is the OSI Model?
The OSI Model is a framework that explains how data travels through a network using seven layers.

---

### How many layers are in the OSI Model?
7 layers

---

### What is Layer 1 called?
Physical Layer

### What happens in the Physical Layer?
Handles hardware, signals, and transmission of bits (0s and 1s)

---

### What is Layer 2 called?
Data Link Layer

### What does the Data Link Layer use to identify devices?
MAC Address

---

### What is Layer 3 called?
Network Layer

### What type of addresses are used in Layer 3?
IP Address

### What does OSPF stand for?
Open Shortest Path First

### What does RIP stand for?
Routing Information Protocol

### Will packets always take the most optimal route?
Yes

### What device works on Layer 3?
Router

---

### What is Layer 4 called?
Transport Layer

### What protocols are used in Layer 4?
TCP and UDP

---

### What is Layer 5 called?
Session Layer

### What does the Session Layer do?
Manages connections between devices

---

### What is Layer 6 called?
Presentation Layer

### What does the Presentation Layer do?
Handles encryption and data formatting

---

### What is Layer 7 called?
Application Layer

### What does the Application Layer do?
Interacts with the user (web, applications, services)

---

## Memory Trick (Top to Bottom)

All People Seem To Need Data Processing

Application  
Presentation  
Session  
Transport  
Network  
Data Link  
Physical
