FROM httpd:2.4.49-alpine

COPY source/vulnerable-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY source/index.html /usr/local/apache2/htdocs/
COPY source/forest.jpg /usr/local/apache2/htdocs/
COPY source/flag.txt /etc/


EXPOSE 80
