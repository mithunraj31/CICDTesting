FROM node:12.18.0-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install && npm install -g @angular/cli

COPY . .

EXPOSE 4200 49153

CMD ["npm", "start"]