sudo apt-get update && sudo apt-get install software-properties-common -y && sudo add-apt-repository ppa:certbot/certbot -y && sudo apt-get update && sudo apt-get install python-certbot-nginx -y

sudo certbot --nginx
