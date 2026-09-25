# Linux Service Troubleshooting Lab

## Scenario
A user reports that a web service is unavailable. The goal is to diagnose the failure systematically rather than immediately restarting the service.

## Troubleshooting path

### 1. Connect to the server
```bash
ssh salman@10.0.0.25
```

### 2. Check service state
```bash
systemctl status apache2
```
This establishes whether the service is active, inactive, or failed before making changes.

### 3. Read the evidence
```bash
journalctl -u apache2 -n 20
```
Logs can reveal configuration errors, permission problems, port conflicts, or other causes.

### 4. Start or restart only after investigation
```bash
sudo systemctl start apache2
```

### 5. Verify
```bash
systemctl is-active apache2
ss -tulpn | grep :80
curl -I http://localhost
```

## What this lab demonstrates
- SSH access
- systemd service management
- journal/log investigation
- listening-port verification
- application-layer verification
- A repeatable pattern: **connect → inspect → logs → fix → verify**

> Lab environment uses private/example addresses. This repository documents learning and troubleshooting practice.
