#!/bin/bash
name=$(hostname)
ip=$(hostname -p)

echo "<html>" > /usr/share/nginx/html/index.html
echo "<head><title> Container info </title></head>" >> /usr/share/nginx/html/index.html
echo "<p> Container name </p>" >> /usr/share/nginx/html/index.html
echo "<P> Container ip </p>" >> /usr/share/nginx/html/index.html
echo "</html>" >> /usr/share/nginx/html/index.html

nginx -g "deamon off;"
