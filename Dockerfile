FROM node:alpine3.14 as build


WORKDIR /app

COPY package.json /app/
RUN npm install

COPY  . /app/
RUN npm run build --prod

FROM nginx:alpine
COPY --from=build /app/dist/ng-pokemon-app /usr/share/nginx/html

 
