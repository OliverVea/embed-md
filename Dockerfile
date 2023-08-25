FROM node:14

RUN npm install embedme -g

COPY . /usr/src/app/
#RUN chmod 755 docker-entrypoint.sh

ENTRYPOINT ["/usr/src/app/docker-entrypoint.sh"]
