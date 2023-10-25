FROM nginx:latest
LABEL authors="SeiLinux IT Solutions"

COPY index.html /usr/share/nginx/html/index.html
COPY conf/sample.conf /etc/nginx/conf.d/seilinux.conf

CMD ["nginx", "-g", "daemon off;"]
