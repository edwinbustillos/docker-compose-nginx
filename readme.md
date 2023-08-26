# NGINX Proxy
![Logo](screens/nginx.png "Logo")
Nginx is an HTTP server, reverse proxy, here you have docker-compose to quickly upload or Dockerfile to customize your image as needed.

Oficial Website https://www.nginx.com/

### Run
```
docker compose up -d
```
### Stop
```
docker compose down
```

### Build Image 
```
docker build -t nginx-server .

docker run -p 80:80 --name nginx-server -d nginx-server
```

# Make SSL with Let´s Encrypt - Optional

### Install snapd:
```
sudo apt install snapd
```

### Ensure you have the latest snapd version installed:
```
sudo snap install core; sudo snap refresh core
```

### Install Certbot with snapd:
```
sudo snap install --classic certbot
```

### Create a symlink to ensure Certbot runs:
```
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

### Crie certificados SSL para um domínio especificado (recomendado se você estiver usando o nome do host do sistema):
```
sudo certbot certonly --standalone --preferred-challenges http -d your-domain.com
```

### SSL
```
sudo ls /etc/letsencrypt/live/your-domain.com
```

### Output
cert.pem | chain.pem | fullchain.pem | privkey.pem | README

Copy files to ./certs and config in default.conf 