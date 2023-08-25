FROM node:14

RUN npm install embedme -g

COPY . .
#RUN chmod 755 docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
