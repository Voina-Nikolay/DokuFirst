FROM nginx:latest

RUN apt-get update && \
    apt-get install -y certbot

COPY index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443
