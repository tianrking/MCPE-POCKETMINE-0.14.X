# About POCKEATMINE of Docker
# Version:0.14.0
FROM ubuntu:14.04
MAINTAINER Tianrking <tian.r.king@gmail.com>
ENV REFRESHED_AT 2016-02-28

RUN apt-get update -y && \
	apt-get install git -y && \
	apt-get clean && \
	git clone https://git.coding.net/trk/MINECRAFT0.14.X.git && \
	cd /root/MC* && \
	./start.sh
EXPOSE $SERVER_PORT
