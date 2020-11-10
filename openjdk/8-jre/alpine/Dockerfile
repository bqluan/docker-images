FROM openjdk:8-jre-alpine

# Set timezone to Asia/Chongqing
RUN apk --update add tzdata \
	&& cp /usr/share/zoneinfo/Asia/Chongqing /etc/localtime \
	&& echo "Asia/Chongqing" > /etc/timezone \
	&& apk del tzdata
