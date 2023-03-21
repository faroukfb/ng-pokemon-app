FROM node:alpine3.14 as build

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app/
RUN npm run build --prod

EXPOSE 80

CMD ["npm", "start"]


 
