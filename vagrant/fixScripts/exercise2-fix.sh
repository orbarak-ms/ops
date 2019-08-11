#!/bin/bash
#add fix to exercise2 here
sed '/^127\.0\.0\.1[[:space:]]/d' /etc/hosts > hosts.new &&
sh -c 'cat hosts.new > /etc/hosts' &&
rm hosts.new