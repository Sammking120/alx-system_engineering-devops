# Domain Configuration and Subdomain Audit Script

This project guides you through configuring your domain's DNS zone to include specific subdomains pointing to respective server IPs and provides a Bash script to audit subdomain information.

## Domain Configuration

Configure your domain's DNS zone with the following subdomains:

1. **www**: Points to your load-balancer IP (`lb-01`).
2. **lb-01**: Points to your load-balancer IP (`lb-01`).
3. **web-01**: Points to your web server IP (`web-01`).
4. **web-02**: Points to your web server IP (`web-02`).

**Steps**:
- Access your domain registrar or DNS provider's control panel.
- Remove any default subdomains if necessary.
- Add the above subdomains with their corresponding IP addresses as A records.

## Bash Script for Subdomain Audit

The Bash script audits subdomain information for a given domain. It accepts two arguments:
- **domain**: (Mandatory) The domain name to audit (e.g., `example.com`).
- **subdomain**: (Optional) A specific subdomain to audit (e.g., `www`).

### Script Requirements
- Uses `awk` for parsing DNS information.
- Includes at least one Bash function.
- Ignores shellcheck case SC2086.
- Outputs in the format: `The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]`.
- When only `domain` is provided, displays information for subdomains `www`, `lb-01`, `web-01`, and `web-02` in that order.
- When both `domain` and `subdomain` are provided, displays information for the specified subdomain.

### Script Usage
Save the script as `audit_subdomains.sh` and make it executable:
```bash
chmod +x audit_subdomains.sh
