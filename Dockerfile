FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY workflows.html /usr/share/nginx/html/workflows.html
CMD ["nginx", "-g", "daemon off;"]
