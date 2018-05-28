#!/bin/bash
sudo nano /etc/postfix/main.cf

smtpd_tls_key_file = /etc/ssl/private/iRedMail.key
smtpd_tls_cert_file = /etc/ssl/certs/iRedMail.crt
smtpd_tls_CAfile = /etc/ssl/certs/iRedMail.crt

smtpd_tls_key_file = /etc/letsencrypt/live/mail.zeeraksoft.com/privkey.pem
smtpd_tls_cert_file = /etc/letsencrypt/live/mail.zeeraksoft.com/cert.pem
smtpd_tls_CAfile = /etc/letsencrypt/live/mail.zeeraksoft.com/chain.pem




sudo postfix reload





sudo nano /etc/dovecot/dovecot.conf

ssl_cert = </etc/ssl/certs/iRedMail.crt
ssl_key = </etc/ssl/private/iRedMail.key

ssl_cert = </etc/letsencrypt/live/mail.zeeraksoft.com/fullchain.pem
ssl_key = </etc/letsencrypt/live/mail.zeeraksoft.com/privkey.pem


sudo dovecot reload
