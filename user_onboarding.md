# User Onboarding and Access Control

## Scenario
A company is onboarding new employees and needs to provide controlled access to system resources.

## Users
- rahul
- anita

## Group
- devops

## Steps

### 1. Create Users
sudo useradd -m rahul
sudo useradd -m anita

### 2. Create Group
sudo groupadd devops

### 3. Add Users to Group
sudo usermod -aG devops rahul
sudo usermod -aG devops anita

### 4. Create Shared Directory
sudo mkdir /team-data
sudo chown :devops /team-data
sudo chmod 770 /team-data

### 5. Apply Password Policy
sudo chage -M 30 rahul

### 6. Configure Limited Sudo Access
sudo visudo

Add:
rahul ALL=(ALL) /usr/bin/systemctl

## Outcome
- Only authorized users can access shared directory
- Group-based access control implemented
- Basic security policies enforced
