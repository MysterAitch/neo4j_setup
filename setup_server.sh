set -x # Activate debugging

    # Update System
    sudo apt-get update
    sudo apt-get -y upgrade
    
    # Install fail2ban
    sudo apt-get install -y fail2ban
    
    # Copy fail2ban configuration across
    cp ./fail2ban_files/jail.local /etc/fail2ban/jail.local
    
    # Restart fail2ban for configuration to take effect
    systemctl restart fail2ban.service
    
set +x # Rectivate debugging

