#######################################################
# Name of the file                 : Dockerfile
# Objective                        : Create image of the bashscript displaying container details 
# Author of the script             : Anshu
# Date of creation                 : 29-11-2025
#######################################################
FROM nginx:alpine
COPY --chmod=755 index.sh /index.sh
EXPOSE 80
###--Script is executed before niginx file is executed ############

ENTRYPOINT ["sh", "/index.sh"]
CMD ["nginx", "-g", "daemon off;"]
CMD ["nginx", "-g", "daemon off;"]
