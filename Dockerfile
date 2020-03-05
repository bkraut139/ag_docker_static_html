FROM nginx:alpine

LABEL maintainer="Boris Krauthaker"

WORKDIR /app
#COPY . .

# Configure NGINX
COPY ./openshift/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./openshift/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN chown -R 1001:0 /etc/nginx /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R g=u /etc/nginx /var/cache/nginx /var/run /var/log/nginx

USER 1001

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]


