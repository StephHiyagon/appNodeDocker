FROM node:slim

EXPOSE 5000

WORKDIR /app

COPY . /app

RUN npm install .

CMD ["npm","start"]
