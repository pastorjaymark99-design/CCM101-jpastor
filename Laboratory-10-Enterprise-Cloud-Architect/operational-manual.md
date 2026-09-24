# CCM101 - Cloud Computing
## Enterprise Cloud Architect – Operational Manual

**Project:** Secure Multi-Tier Web Application
**Application Stack:** WordPress + MySQL
**Prepared by:** Apiaza, Keyya Daniela M. | Joanino, Denmark P. | Pastor, Jay Mark
**Section:** BSIT Block 4I
**Instructor:** Jenkielyn C. Torres
**Date:** September 2026

---

## 1. Architecture Overview
This infrastructure runs on a local VirtualBox hypervisor hosting an Ubuntu
Server 26.04.1 LTS virtual machine. The VM is configured with Bridged
Networking so it is reachable directly from the host machine's browser. Inside
the VM, Docker and Docker Compose orchestrate a two-container stack: a
WordPress application container and a MySQL database container, connected
through an isolated Docker bridge network. Data persistence is achieved
through named Docker volumes. The VM is hardened using UFW, and disaster
recovery is handled through an automated Bash backup script scheduled via
cron. See `architecture-diagram.png` for the full network topology.

## 2. Prerequisites
- Windows host machine with VirtualBox installed
- Ubuntu Server 26.04.1 LTS ISO
- Minimum 4096 MB RAM and 2 CPUs allocated to the VM
- 25 GB virtual disk
- Internet connection for package and image downloads

## 3. Deployment Steps

### 3.1 Provision the Virtual Machine
1. Create a new VM in VirtualBox (Linux / Ubuntu 64-bit).
2. Allocate 4096 MB RAM, 2 CPUs, and a 25 GB dynamically allocated VDI disk.
3. Set Network Adapter 1 to **Bridged Adapter**, bound to the host's active
   Wi-Fi/Ethernet adapter.
4. Boot from the Ubuntu Server ISO and complete the unattended installation,
   including creation of a user account.

### 3.2 Enable Remote Access
```bash
sudo apt install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
```
Confirm the VM's IP address with `ip a` and connect from the host via:
```bash
ssh <username>@<vm-ip>
```

### 3.3 Install Docker and Docker Compose
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
```

### 3.4 Deploy the Application Stack
The full stack definition is provided in `docker-compose.yml`. Deploy with:
```bash
docker compose up -d
```
Verify both containers are running:
```bash
docker compose ps
```
Access the site from the host browser at `http://<vm-ip>`.

### 3.5 Persistent Storage
Both the database (`mysql_data`) and WordPress application files
(`wordpress_data`) are stored in named Docker volumes, ensuring data survives
container restarts and VM reboots. This was verified by running
`docker compose down` followed by `docker compose up -d` and confirming the
WordPress site and login credentials remained intact.

## 4. Security Configuration (Hardening)
The server firewall is configured using UFW with a default-deny policy on
incoming traffic:
```bash
sudo apt install -y ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw allow 80/tcp
sudo ufw enable
```
Only two ports are exposed:
- **22/tcp (SSH)** - remote administration
- **80/tcp (HTTP)** - WordPress web access

All other inbound traffic is denied by default.

## 5. Automation & Disaster Recovery
A custom Bash script (`automation-script.sh`) automates backup of both the
MySQL database and the WordPress files volume. It performs the following:
1. Dumps the MySQL database using `mysqldump --no-tablespaces`.
2. Archives the WordPress files volume into a timestamped `.tar.gz` file
   using a temporary Alpine container.
3. Logs each successful run to `backup.log`.

The script is made executable with `chmod +x` and scheduled via cron to run
daily at 2:00 AM:
```bash
crontab -e
# Added line:
0 2 * * * /home/jpastor/scripts/backup.sh
```

## 6. Maintenance Notes
- To update the stack: `docker compose pull && docker compose up -d`
- To view logs: `docker compose logs`
- To manually trigger a backup: `~/scripts/backup.sh`
- To check firewall status: `sudo ufw status verbose`

## 7. Troubleshooting Reference
| Issue | Resolution |
|---|---|
| VM unreachable / SSH times out | Verify Bridged Adapter is active and VM has a valid IP via `ip a` |
| Containers won't start | Check `docker compose logs` for errors |
| Backup script errors on tablespaces | Ensure `--no-tablespaces` flag is present in `mysqldump` command |
| SSH disconnects during large downloads | Reconnect and retry; consider using `tmux`/`screen` for long operations |
