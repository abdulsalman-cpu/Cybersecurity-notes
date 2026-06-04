# Networking Basics

## What is Networking?
Networking is the process of connecting devices such as computers, phones, and servers so they can communicate and share data.

## What is the Internet?
The Internet is a global network of networks. It connects billions of devices around the world using standard protocols like TCP/IP.

## Identifying Devices on a Network

Each device on a network can be identified by:

**IP Address**  
A logical address used to find a device on a network.  
Example: `192.168.1.1`

**MAC Address**  
A unique physical address assigned to a network device.

**Hostname**  
A human-friendly name used to identify a device or website.  
Example: `google.com`

## Ping and ICMP

**Ping** is a tool used to test if another device is reachable on a network.

Ping uses **ICMP**, which stands for Internet Control Message Protocol.

Simple idea:

Device A sends a request:

`Are you there?`

Device B replies:

`Yes, I am here.`

## Simple Flow

```text
Device A  →  Ping Request  →  Network  →  Device B
Device B  →  Ping Reply    →  Network  →  Device A
