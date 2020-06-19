FROM nginx:1.17.3

COPY nginx.conf /etc/nginx/nginx.conf

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

CMD ["nginx", "-g", "daemon off;"]
