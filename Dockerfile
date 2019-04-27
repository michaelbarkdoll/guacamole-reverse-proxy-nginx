FROM nginx:1.15.12

COPY nginx.conf /etc/nginx/nginx.conf

# openssl is the only required thing to install
RUN apt-get update && apt-get -y install openssl

WORKDIR /etc/nginx/conf.d/
RUN openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365
