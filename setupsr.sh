#!/bin/bash
# install updates, Nginx, Users, perms
yum update -y
yum install -y nginx
systemctl start nginx
systemctl enable nginx
chown -R nginx:nginx /usr/share/nginx/www
cd /usr/share/nginx/www
git init
git pull https://github.com/interviewDemo/interviewProject.git .
useradd -m -p "gonzo" Alice
useradd -m -p "kermit" Malory # alternatively we could add both alice & malory to the same group then assign the group permissions: groupadd -m marketing, usermod -a -G marketing Alice,Mallory chown -R marketing:marketing. 
useradd -m -p "piggy" Bobby
useradd -m -p "chef" charlie
su Alice
chmod 700 /usr/share/nginx/news
su malory
chmod 700 /usr/share/nginx/www/news
su bobby
chmod 700 /usr/share/nginx/www
su charlie chown -R charlie:charlie /people.html
chmmod 700