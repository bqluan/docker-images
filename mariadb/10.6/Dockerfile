FROM mariadb:10.6

# Set timezone to Asia/Shanghai
RUN set -e \
  && rm -f /etc/localtime \
  && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

