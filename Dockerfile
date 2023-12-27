FROM nginx:stable

WORKDIR /usr/share/nginx/html/
COPY website/* ./

CMD ["nginx", "-g", "daemon off;"]