#!/bin/bash

SERVER_IP="192.168.10.3"
SERVER_USER="root"
REMOTE_PATH="/var/www/portfolio"

# Bygg prosjektet
npm run build

# Pakk dist-mappen
tar -czf dist.tar.gz -C dist .

# Send den opp til serveren
scp dist.tar.gz $SERVER_USER@$SERVER_IP:/tmp/

# Koble til serveren og gjør resten der
ssh $SERVER_USER@$SERVER_IP <<EOF
    cd $REMOTE_PATH
    rm -rf dist
    mkdir dist
    tar -xzf /tmp/dist.tar.gz -C dist
    rm /tmp/dist.tar.gz
    systemctl restart nginx
EOF

# Rydd opp lokalt
rm dist.tar.gz

echo "✅ Deploy ferdig!"
