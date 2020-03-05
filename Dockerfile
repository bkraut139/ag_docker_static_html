FROM nginx:alpine
COPY . /usr/share/nginx/html

EXPOSE 8080
STOPSIGNAL SIGTERM
USER 101

CMD ["nginx", "-g", "daemon off;"]
