FROM rhel8/nginx-120
RUN mkdir -p /var/cache/nginx && chgrp -R 0 /var/cache/nginx/ && chmod -R g=u /var/cache/nginx
COPY . /usr/share/nginx/html  
EXPOSE 8080
