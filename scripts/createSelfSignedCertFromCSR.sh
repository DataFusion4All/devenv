openssl x509 -req -in /root/certs/mail.gitlab.lab.csr -CA /root/labCA/labCA.pem -CAkey /root/labCA/labCA.key -CAcreateserial -out /root/certs/mail.gitlab.lab.pem -days 1825 -sha256
