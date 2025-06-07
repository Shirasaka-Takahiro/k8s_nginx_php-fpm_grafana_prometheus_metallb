FROM nginx:latest
COPY ./conf/example-test.com.conf /etc/nginx/conf.d
RUN mkdir -p /var/www/vhosts/example-test.com/public_html
COPY ./src_dir /var/www/vhosts/example-test.com/public_html/
EXPOSE 80