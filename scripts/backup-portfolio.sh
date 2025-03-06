#!/bin/bash

SERVER_IP="192.168.10.3"
SERVER_USER="root"
REMOTE_PORTFOLIO_DIR="/var/www/portfolio/MyPortfolio"
BACKUP_DIR="$HOME/portfolio_backup"
BACKUP_FILE="portfolio-backup.tar.gz"

# Lag backup dir hvis den ikke finnes
mkdir -p "$BACKUP_DIR"

# SSH-kommando som lager backup på serveren - kun relevante filer!
ssh ${SERVER_USER}@${SERVER_IP} "\
    cd ${REMOTE_PORTFOLIO_DIR} && \
    tar -czf /tmp/${BACKUP_FILE} \
    src public \
    vite.config.* package*.json \
    .gitignore \
    README.md
"

# Henter backup til din maskin
scp ${SERVER_USER}@${SERVER_IP}:/tmp/${BACKUP_FILE} "${BACKUP_DIR}/"

# Pakker ut på din PC
cd "${BACKUP_DIR}"
tar -xzf "${BACKUP_FILE}"

echo "✅ Backup lastet ned og klar i: ${BACKUP_DIR}/MyPortfolio"
