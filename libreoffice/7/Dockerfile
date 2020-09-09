FROM openjdk:8

# Set timezone to Asia/Shanghai
RUN set -e \
	&& rm -f /etc/localtime \
	&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN set -e \
	&& apt-get update \
	&& apt-get install -y libreoffice
