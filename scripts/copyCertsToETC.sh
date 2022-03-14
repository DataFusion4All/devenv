cp /root/certs/*.pem /etc/ssl/certs
cp /root/labCA/*.pem /etc/ssl/certs
cp /root/certs/*.key /etc/ssl/private
chmod 644 /etc/ssl/certs/mail.gitlab.lab.pem
chmod 644 /etc/ssl/certs/labCA.pem
chmod 640 /etc/ssl/private/mail.gitlab.lab.key
