Dockerized Let's Encrypt bot (Certbot)

Usage
=====

Build
    
    docker build -t sb/musclebot . 

Generating certificate

    docker run --rm --name=musclebot \
    -v /etc/localtime:/etc/localtime:ro \
    -v <path to certificates>:/etc/letsencrypt \
    -e DOCKMAIL=<admin@example.az> \
    -e DOCKMAILDOMAINS=<domains list> \
    -p 80:80 \
    -p 443:443 \
    sb/musclebot certbot 

Renewing certificate
    
    docker run --rm --name=musclebot \
    -v /etc/localtime:/etc/localtime:ro \
    -v <path to certificates>:/etc/letsencrypt \
    -e DOCKMAIL=<admin@example.az> \
    -e DOCKMAILDOMAINS=<domains list> \
    -p 80:80 \
    -p 443:443 \
    sb/musclebot certbot-renew 
