FROM nginx:stable-alpine
COPY default.conf /etc/nginx/conf.d
RUN mkdir -p /certs
COPY certs/ /certs/
EXPOSE 80/tcp
EXPOSE 443/tcp
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html