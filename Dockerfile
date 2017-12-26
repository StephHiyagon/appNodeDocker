FROM node:6.9

EXPOSE 3000

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

CMD ["npm","start"]
