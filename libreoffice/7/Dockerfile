FROM openjdk:8

# Set timezone to Asia/Shanghai
RUN set -e \
	&& rm -f /etc/localtime \
	&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Install libreoffice
RUN set -e \
	&& apt-get update \
	&& apt-get install -y libreoffice

# Install fonts
COPY fonts/* /usr/share/fonts/zh-hans/
RUN set -e \
	&& apt-get install -y locales \
	&& apt-get install -y language-pack-zh-hans \
	&& apt-get install -y ttf-mscorefonts-installer \
	&& apt-get install -y fontconfig \
	&& apt-get install ttf-wqy-microhei \
	&& apt-get install ttf-wqy-zenhei \
	&& apt-get install xfonts-wqy \
	&& cd /usr/share/fonts/zh-hans \
	&& mkfontscale \
	&& mkfontdir \
	&& fc-cache -fv
