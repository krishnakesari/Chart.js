FROM node:latest
LABEL author = "Kris"

ENV NODE_ENV = production
ENV PORT=3000

COPY . /var/www
COPY . ./
COPY package.json ./
COPY package-lock.json ./

WORKDIR /var/www

VOLUME ["/var/www"]

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
