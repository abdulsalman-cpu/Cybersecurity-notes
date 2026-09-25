# HTTPS / TLS Troubleshooting Lab

## Scenario
A website is expected to work over HTTPS, but users cannot connect securely.

## Investigation

### 1. Confirm something is listening on 443
```bash
ss -tulpn | grep :443
```
If nothing is listening, investigate the web server before blaming DNS or the certificate.

### 2. Validate web-server configuration
Apache:
```bash
sudo apache2ctl configtest
```

Nginx:
```bash
sudo nginx -t
```

### 3. Search configuration instead of assuming the path
```bash
sudo grep -R "Listen 443" /etc/apache2/
sudo grep -R "listen" /etc/nginx/
```

### 4. Test the TLS handshake and SNI
```bash
openssl s_client -connect example.com:443 -servername example.com
```
This exposes certificate and TLS-handshake information. SNI tells the server which hostname the client is requesting when multiple sites share an IP.

### 5. Verify at the HTTP layer
```bash
curl -I https://example.com
```

## Troubleshooting chain
**DNS → TCP 443 → web-server listener → configuration → TLS/SNI/certificate → HTTP response**

## What this lab demonstrates
- port/socket investigation
- Apache/Nginx configuration validation
- configuration discovery with grep
- TLS and SNI concepts
- end-to-end verification
