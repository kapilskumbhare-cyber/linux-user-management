#!/bin/bash

# Check root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Create users
useradd -m rahul
useradd -m anita

# Create group
groupadd devops

# Add users to group
usermod -aG devops rahul
usermod -aG devops anita

# Create shared directory
mkdir -p /team-data
chown :devops /team-data
chmod 770 /team-data

# Apply password policy
chage -M 30 rahul

echo "Setup completed successfully"
