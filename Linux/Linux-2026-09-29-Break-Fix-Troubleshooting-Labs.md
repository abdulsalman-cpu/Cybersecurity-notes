# Linux Break/Fix Troubleshooting Labs — 2026-09-29

Hands-on troubleshooting notes from Ubuntu server + Kali client lab.

## Mental model

Troubleshoot from evidence, not assumptions:

```text
symptom → service → process → socket/port → network/firewall → files/permissions → application → verify
```

A command is a question to the system:

- `systemctl status SERVICE` — is the service running, and what unit/command is it using?
- `journalctl -u SERVICE -n 20` — why did the service fail?
- `ss -tulpn` — what is listening, on which port and address?
- `ps -fp PID` — what process is this and which user runs it?
- `namei -l PATH` — can the service user traverse every directory and access the file?
- `ufw status` — is firewall traffic allowed?
- `curl` — does the application actually respond?

## Incident 1 — Shipping Portal: wrong bind address

**Symptom:** application worked locally but remote users could not connect.

Evidence showed the service was active and TCP 8093 was listening, but only on:

```text
127.0.0.1:8093
```

Root cause: the application was bound to loopback only.

Fix: change the service bind address to `0.0.0.0`, then:

```bash
sudo systemctl daemon-reload
sudo systemctl restart shipping-web.service
```

Verification with `ss` showed `0.0.0.0:8093`, and remote `curl` from Kali succeeded.

**Lesson:** a port being LISTENING is not enough. Check *which address* it is listening on.

- `127.0.0.1:PORT` = local machine only
- `0.0.0.0:PORT` = all IPv4 interfaces

## Incident 2 — Billing Portal: directory traversal permission

**Symptom:** service was active and listening on `0.0.0.0:8094`, but users could not access the application page.

The service ran as `nobody`. The HTML file itself was readable:

```text
-rw-r--r-- root root index.html
```

But `namei -l /srv/billing-portal/app/index.html` exposed:

```text
drwx------ root root app
             index.html - Permission denied
```

Root cause: `nobody` could not traverse the `app` directory.

Smallest fix:

```bash
sudo chmod o+x /srv/billing-portal/app
```

Remote verification from Kali returned:

```text
BILLING PORTAL HEALTHY
```

**Lesson:** files need `r` to be read; directories need `x` to be traversed. Avoid broad fixes such as `chmod 777` when one permission is enough.

## Incident 3 — Employee Records Portal: systemd 203/EXEC

**Symptom:** server could be pinged but TCP 8095 had no listener and the portal would not open.

```bash
sudo journalctl -u employee-portal.service -n 20
```

showed:

```text
Unable to locate executable '/usr/bin/pythn3': No such file or directory
Failed at step EXEC
status=203/EXEC
```

Verification:

```bash
namei -l /usr/bin/python3
```

showed that `/usr/bin/python3` existed and was executable. `systemctl cat employee-portal.service` confirmed the unit contained the typo:

```text
ExecStart=/usr/bin/pythn3 ...
```

Root cause: misspelled executable path in `ExecStart=`.

Fix: change only `pythn3` → `python3`, then:

```bash
sudo systemctl daemon-reload
sudo systemctl restart employee-portal.service
systemctl status employee-portal.service
```

Status then showed the real process:

```text
/usr/bin/python3 -m http.server 8095 ...
```

Remote verification from Kali returned:

```text
EMPLOYEE PORTAL HEALTHY
```

## systemctl lesson: reload vs daemon-reload

These are different:

```bash
systemctl reload SERVICE
```

asks the application/service to reload its own configuration. Not every service supports this.

```bash
sudo systemctl daemon-reload
```

asks **systemd** to reread changed unit files.

When editing a systemd unit:

```text
edit unit → daemon-reload → restart service → verify
```

## Listener vs firewall

A listener and a firewall rule are separate:

| Listener | Firewall allows | Meaning |
|---|---|---|
| Yes | Yes | Remote connection may succeed |
| Yes | No | Process is listening, firewall can block traffic |
| No | Yes | Firewall permits traffic, but no process answers |
| No | No | No listener and traffic is not permitted |

`ss` answers whether a process/socket is listening. UFW controls whether traffic is permitted; deleting a UFW rule does not itself stop the process.

## Cleanup discipline

After every lab, return the machine to its original state:

```text
stop/disable service
→ remove custom unit
→ daemon-reload
→ remove all lab directories/files
→ remove firewall rule
→ verify unit is gone
→ verify port has no listener
→ verify firewall is clean
```

Strong cleanup evidence includes:

```text
Unit SERVICE.service could not be found.
```

and no output from:

```bash
sudo ss -tulpn | grep :PORT
```

## Key takeaway

Do not memorize fixes. Build an evidence chain:

```text
What is the symptom?
→ What layer/component could produce it?
→ What command tests that idea?
→ What does the evidence eliminate?
→ What is the smallest safe fix?
→ Can the real client verify the application?
```
