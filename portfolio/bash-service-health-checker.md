# Bash Service Health Checker

A small Bash project that turns a common Linux troubleshooting pattern into a reusable check.

## What it does

The script accepts a systemd service name, checks whether it is active, and gathers useful evidence when the service is down.

```bash
./service-health-check.sh nginx
```

Healthy example:

```text
=== Service Health Check: nginx ===
[OK] nginx is active.
```

If the service is not active, the script prints a short `systemctl status` view and recent `journalctl` entries. It returns a non-zero exit code so the result can also be used by another script or monitoring workflow.

## Why I built it

During manual troubleshooting I repeatedly use the pattern:

**check state → inspect status → inspect logs → decide what to fix**

This script automates the evidence-gathering part without automatically restarting or changing the server. I intentionally leave the repair decision to the administrator because the logs should be understood before a change is made.

## Run it

```bash
chmod +x scripts/service-health-check.sh
./scripts/service-health-check.sh apache2
```

## Concepts practiced

- Bash variables and positional arguments
- command availability checks
- `if` conditions
- exit codes
- systemd / `systemctl`
- `journalctl`
- safe troubleshooting automation

## Next improvements

Planned extensions include checking multiple services, disk usage, listening ports, and producing a combined server-health report.
