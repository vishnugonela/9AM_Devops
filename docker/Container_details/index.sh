
#!/bin/bash
HOSTNAME=$(hostname)
IP=$(hostname -i)

cat <<EOF > /usr/share/nginx/html/index.html
<html> <body> <h2>Container Details</h2> <p>
<b>Container Name:</b> $HOSTNAME</p> 
<p><b>Container IP:</b> $IP</p> 
</body> </html> 
EOF

exec nginx -g "daemon off;"
