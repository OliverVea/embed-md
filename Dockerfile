FROM node:14

RUN npm install embedme -g

WORKDIR /app
COPY . /app

RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]
