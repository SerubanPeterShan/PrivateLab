#!/bin/bash
pveum user add pve-exporter@pve --password Proxmox@pve
pveum acl modify / -user pve-exporter@pve -role PVEAuditor
useradd -s /bin/false pve-exporter
apt update
apt install -y python3-venv
python3 -m venv /opt/prometheus-pve-exporter
source /opt/prometheus-pve-exporter/bin/activate
pip install prometheus-pve-exporter
deactivate
nano /etc/prometheus/pve.yml
mkdir /etc/prometheus
nano /etc/prometheus/pve.yml
nano /etc/prometheus/pve.yml
chown -v root:pve-exporter /etc/prometheus/pve.yml
chmod -v 640 /etc/prometheus/pve.yml
nano /etc/systemd/system/prometheus-pve-exporter.service
systemctl daemon-reload
systemctl enable prometheus-pve-exporter.service
systemctl start prometheus-pve-exporter.service
ss -lntp | grep 9221
curl --silent http://127.0.0.1:9221/pve | grep pve_version_info
nano /etc/prometheus/pve.yml
