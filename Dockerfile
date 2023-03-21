FROM node:alpine3.14 as build

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app/
RUN npm run build --prod

EXPOSE 4200

CMD ["npm", "start"]


 
