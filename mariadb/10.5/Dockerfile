FROM mariadb:10.5

# Set timezone to Asia/Shanghai
RUN set -e \
  && rm -f /etc/localtime \
  && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
