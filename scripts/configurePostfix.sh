# General Settings
postconf -e "home_mailbox = Maildir"
postconf -e "mydomain = gitlab.lab"
postconf -e "myorigin = $mydomain"
postconf -e "mailbox_command = "
# Dovecot SASL
postconf -e "smtpd_sasl_type = dovecot"
postconf -e "smtpd_sasl_path = private/auth"
postconf -e "smtpd_sasl_auth_enable = yes"
# SMTP Server
postconf -e "smtpd_use_tls = yes"
postconf -e "smtpd_tls_cert_file = /etc/ssl/certs/mail.gitlab.lab.pem"
postconf -e "smtpd_tls_CAFile = /etc/ssl/certs/labCA.pem"
postconf -e "smtpd_tls_key_file = /etc/ssl/private/mail.gitlab.lab.key"
postconf -e "smtpd_tls_eecdh_grade = strong"
postconf -e "smtpd_tls_protocols = >=TLSv1.2"
postconf -e "smtpd_tls_mandatory_protocols = >=TLSv1.2"
postconf -e "smtpd_tls_mandatory_ciphers = high"
postconf -e "smtpd_tls_security_level = may"
postconf -e "smtpd_tls_ciphers = high"
postconf -e "smtpd_tls_mandatory_exclude_ciphers = aNULL, MD5, DES, ADH, RC4, PSD, SRP, 3DES, eNULL"
postconf -e "smtpd_tls_exclude_ciphers = aNULL, MD5, DES, ADH, RC4, PSD, SRP, 3DES, eNULL"
postconf -e "smtpd_tls_auth_only = no"
postconf -e "smtpd_tls_log_level = 1"
postconf -e "smtpd_tls_received_header = yes"
postconf -e "tls_preempt_cipherlist = yes"
# SMTP Client
postconf -e "stmp_use_tls = yes"
postconf -e "smtp_tls_note_starttls_offer = yes"
postconf -e "smtp_tls_session_cache_timeout = 3600s"
postconf -e "smtp_tls_mandatory_protocols = >=TLSv1.2"
postconf -e "smtp_tls_protocols = >=TLSv1.2"