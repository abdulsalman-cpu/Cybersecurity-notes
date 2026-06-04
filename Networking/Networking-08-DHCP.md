# DHCP (Dynamic Host Configuration Protocol)

## What is DHCP?

DHCP is a system that automatically assigns IP addresses to devices on a network.

Simple:
DHCP = Automatic IP address provider

---

## Why DHCP is Needed

- Every device needs an IP address
- Manual configuration is difficult and time-consuming
- DHCP automates the process

---

## How DHCP Works (DORA)

### 1. DHCP Discover (Broadcast)
- Device joins the network
- Sends a request to find a DHCP server
- Message:
  "Is there any DHCP server available?"

### 2. DHCP Offer
- Server responds with an available IP address
- Message:
  "You can use this IP address"

### 3. DHCP Request
- Device accepts the offered IP
- Message:
  "I want to use this IP address"

### 4. DHCP ACK (Acknowledge)
- Server confirms and assigns the IP
- Message:
  "IP assigned, you can use it now"

---

## Memory Trick

DORA = Discover → Offer → Request → Acknowledge

---

## Key Terms

DHCP Server:
Device that assigns IP addresses

IP Address:
Logical identity of a device on a network

Discover:
Request sent to find a DHCP server

Offer:
Server provides an available IP address

Request:
Device accepts the offered IP

ACK:
Final confirmation from server

---

## One-line Summary

DHCP automatically assigns IP addresses using the DORA process.

---

## Questions and Answers

What type of DHCP packet is used to request an IP address?
DHCP Discover

What packet is sent after receiving an IP offer?
DHCP Request

What is the final packet sent by the server?
DHCP ACK
