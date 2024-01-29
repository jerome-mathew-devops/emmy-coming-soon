FROM nginx:alpine
WORKDIR /app 
COPY . .
EXPOSE 90