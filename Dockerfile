FROM nginx:alpine

LABEL maintainer="ReliefMelone"

WORKDIR /app
COPY . .

# Install node.js
RUN apk update && \
    apk add nodejs npm python make curl g++


# Configure NGINX
COPY ./openshift/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./openshift/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN chgrp -R root /var/nginx /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/nginx /var/cache/nginx /var/run /var/log/nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
