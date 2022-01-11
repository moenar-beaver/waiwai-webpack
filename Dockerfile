FROM nginx
COPY public /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY create_htpasswd.sh /etc/nginx

RUN apt-get update
RUN apt-get install -y openssl
RUN chmod 755 /etc/nginx/create_htpasswd.sh
RUN /etc/nginx/create_htpasswd.sh
RUN chmod 444 /etc/nginx/.htpasswd