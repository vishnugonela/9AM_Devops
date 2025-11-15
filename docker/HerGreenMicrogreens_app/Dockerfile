#########################################################
# File name             : Dockerfile
# objective of the file : Build image for nginx server launching a webpage
# Date                  : 15-11-2025
# Version update        : nill
###########################################################
FROM nginx:alpine 

COPY html/index.html /usr/share/nginx/html 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

