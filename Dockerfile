FROM nginx:latest
RUN mkdir -p /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chown -R nginx:0 /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chmod -R g=u /var/run/nginx /var/log/nginx /var/cache/nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html  
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]
