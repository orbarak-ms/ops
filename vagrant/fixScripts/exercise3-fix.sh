#!/bin/bash
#add fix to exercise3 here
sed -i -e '12d;13d' /etc/apache2/sites-available/default &&
/etc/init.d/apache2 reload