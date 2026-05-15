FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY locales/ /usr/share/nginx/html/locales/
COPY docs/ /usr/share/nginx/html/docs/
COPY assets/ /usr/share/nginx/html/assets/
