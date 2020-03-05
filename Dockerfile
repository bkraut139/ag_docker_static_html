FROM nginx:alpine

LABEL maintainer="Boris Krauthaker"

WORKDIR /app
COPY . .

# Configure NGINX
#COPY ./openshift/nginx/nginx.conf /etc/nginx/nginx.conf
#COPY ./openshift/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN chgrp -R root /var/nginx /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/nginx /var/cache/nginx /var/run /var/log/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
