# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gilee <gilee@42seoul.student.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/06 20:51:17 by gilee             #+#    #+#              #
#    Updated: 2021/04/06 20:51:19 by gilee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
if [$AUTO_INDEX = ""] ; then
	sed -i "s|VAR_AUTO_INDEX|on|g" /etc/nginx/sites-available/default
else
	sed -i "s|VAR_AUTO_INDEX|$AUTO_INDEX|g" /etc/nginx/sites-available/default
fi
#ssh
openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR" -keyout ssl.key -out ssl.crt
chmod 600 ssl.*
mv ssl.* /etc/nginx
#db
service mysql start
echo "CREATE DATABASE ft_wordpress" | mysql -uroot mysql
echo "CREATE USER gilee@localhost" | mysql -uroot mysql
echo "SET PASSWORD FOR gilee@localhost= PASSWORD(\"1234\")" | mysql -uroot mysql
echo "GRANT ALL PRIVILEGES ON ft_wordpress.* TO gilee@localhost IDENTIFIED BY '1234'" | mysql -uroot mysql
echo "FLUSH PRIVILEGES" | mysql -uroot mysql

service php7.3-fpm start
service nginx start
service mysql restart