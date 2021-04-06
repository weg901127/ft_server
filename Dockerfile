# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gilee <gilee@42seoul.student.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/06 20:50:46 by gilee             #+#    #+#              #
#    Updated: 2021/04/06 20:51:00 by gilee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM  debian:10.9
LABEL maintainer="gilee@student.42seoul.kr"
RUN apt-get update
RUN apt-get install -y	nginx\
						wget\
						php7.3-fpm default-mysql-server\
						php7.3-curl php7.3-mysql php7.3-mbstring
#phpadmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz;\
	tar -xf phpMy* ;\
	mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin ;\
	rm phpMy* ;\
	mv /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php
#nginx
RUN	echo "\ndaemon off;" >> /etc/nginx/nginx.conf ;\
	chown -R www-data:www-data /var/lib/nginx ;\
	rm /etc/nginx/sites-available/default
COPY /srcs/default /etc/nginx/sites-available/
#wordpress
COPY /srcs/wordpress/. /var/www/html
RUN chown -R www-data:www-data /var/www/html
#start service
COPY /srcs/start.sh /etc/nginx/
CMD ./etc/nginx/start.sh

EXPOSE 80 443