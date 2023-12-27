FROM debian:stable-slim
RUN apt update && apt-get install -y nginx
#ENV OBJECT_LOCATION
WORKDIR /usr/share/nginx/html
COPY index.html .
RUN mkdir test
COPY test.html test/
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80/tcp
#RUN build.sh
CMD ["nginx", "-g", "daemon off;"]
