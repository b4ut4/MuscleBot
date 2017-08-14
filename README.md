Dockerized Let's Encrypt bot (Certbot)

Usage
=====

Build
    
    docker build -t sb/musclebot . 

Generating certificate

    docker run --rm --name=musclebot \
    -v /etc/localtime:/etc/localtime:ro \
    -v <path to certificates>:/etc/letsencrypt \
    -p 80:80 \
    -p 443:443 \
    sb/musclebot certbot \
    certonly \
    --standalone \
    --agree-tos \
    --renew-by-default \
    -d <example.az> \
    -m <admin@example.az>

Renewing certificate
    
    docker run --rm --name=musclebot \
    -v /etc/localtime:/etc/localtime:ro \
    -v <path to certificates>:/etc/letsencrypt \
    -p 80:80 \
    -p 443:443 \
    sb/musclebot certbot renew 
