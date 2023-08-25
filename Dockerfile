FROM node:14

RUN npm install embedme -g

WORKDIR /app
COPY . /app

ENTRYPOINT ["/app/entrypoint.sh"]
