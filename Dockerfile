EXPOSE 8080
STOPSIGNAL SIGTERM
USER 101

FROM nginx:alpine
COPY . /usr/share/nginx/html



CMD ["nginx", "-g", "daemon off;"]
