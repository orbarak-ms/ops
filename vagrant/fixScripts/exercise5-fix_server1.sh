#!/bin/bash
#add fix to exercise5-server1 here
apt-get install sshpass &&
sudo -H -u vagrant bash -c 'ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""' &&
echo "sudo -H -u vagrant bash -c 'sshpass -p \"vagrant\" ssh-copy-id vagrant@server2'" | at now + 2 min &&
printf '\t%s\n' 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config