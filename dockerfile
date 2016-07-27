FROM node:5.3.0

MAINTAINER rocdk890 "rocdk@163.com"

RUN npm install -g pm2@latest

VOLUME ["/var/app"]
VOLUME ["/var/log/app"]

ADD start /var/start
CMD ["/var/start"]

# Expose most common port for node apps
EXPOSE 80 
EXPOSE 443