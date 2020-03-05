FROM nginx:alpine

EXPOSE 8080
STOPSIGNAL SIGTERM
USER 101

COPY . /usr/share/nginx/html



CMD ["nginx", "-g", "daemon off;"]
