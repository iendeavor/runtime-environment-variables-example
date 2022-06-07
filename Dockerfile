FROM nginx:1.22.0-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /app/entrypoint.sh
COPY index.html /app/index.html
COPY index.js /app/index.js

ENTRYPOINT [ "sh", "/app/entrypoint.sh" ]
