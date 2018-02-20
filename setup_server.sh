set -x # Activate debugging

    # Update System
    sudo apt-get update
    sudo apt-get -y upgrade
    
    # Install fail2ban
    sudo apt-get install -y fail2ban
    
set +x # Rectivate debugging
