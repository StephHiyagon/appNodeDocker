FROM node:slim

EXPOSE 5000

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

CMD ["npm","start"]
