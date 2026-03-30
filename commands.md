# Commands Used

useradd -m rahul
useradd -m anita

groupadd devops

usermod -aG devops rahul
usermod -aG devops anita

mkdir /team-data
chown :devops /team-data
chmod 770 /team-data

chage -M 30 rahul
