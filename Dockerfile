FROM nginx:stable

WORKDIR /var/www/html
COPY website/* ./

CMD ["nginx", "-g", "daemon off;"]