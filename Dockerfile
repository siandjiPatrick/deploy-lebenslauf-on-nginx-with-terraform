FROM debian:stable-slim

RUN apt update && apt-get install -y nginx
WORKDIR /var/www/html
COPY website/* ./
COPY website2/nginx.conf /etct/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]