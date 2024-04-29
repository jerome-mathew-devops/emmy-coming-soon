FROM node:alpine as build 
WORKDIR /app 
COPY . /app/
RUN npm install
RUN npm build
COPY . /app

FROM nginx:alpine
COPY --from=build /app /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]