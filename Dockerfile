# About POCKEATMINE of Docker
# Version:0.14.0
FROM ubuntu:14.04
MAINTAINER Tianrking <tian.r.king@gmail.com>
ENV REFRESHED_AT 2016-02-28

RUN apt-get -qq update  && \
	apt-get install git && \
	apt-get clean && \
	git clone https://github.com/wangtianrui/MCPE-POCKETMINE-0.14.X.git

RUN cd MCPE-POCKETMINE-0.14.X && \
CMD ["start.sh","y","n"]
EXPOSE $SERVER_PORT