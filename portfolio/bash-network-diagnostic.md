# Layered Network Diagnostic Script

This Bash script collects evidence in the same order I use when troubleshooting Linux connectivity:

**interface/IP → routing → route decision → neighbor/ARP → DNS → sockets**

It does not make configuration changes. Its purpose is to collect evidence quickly so the administrator can identify the failing layer before attempting a fix.

## Usage

```bash
chmod +x scripts/network-diagnostic.sh
./scripts/network-diagnostic.sh example.com
```

## Commands used

- `ip -4 addr` - interface and IPv4 addressing
- `ip route` - routing table
- `ip route get 1.1.1.1` - route Linux would select
- `ip neigh` - ARP/neighbor state
- `resolvectl status` or `/etc/resolv.conf` - DNS configuration
- `dig` / `getent` - name resolution
- `ss -tulpn` - listening TCP/UDP sockets

## Why this project matters

A connectivity symptom can come from several different layers. Automating evidence collection makes troubleshooting faster while still requiring the administrator to reason about the results instead of blindly changing configuration.

## Future improvements

- optional gateway reachability test
- HTTPS/TLS checks
- log output to a timestamped report
- multiple-host checks
