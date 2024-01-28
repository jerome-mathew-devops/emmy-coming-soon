FROM node-alpine AS build 
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build
