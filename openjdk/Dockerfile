FROM openjdk:8-jdk-slim

ENV TZ 'Asia/Seoul'

RUN echo $TZ > /etc/timezone && \
apt-get update && apt-get install -y locales && \
rm /etc/localtime && \
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
sed -i 's/^# *\(ko_KR.UTF-8\)/\1/' /etc/locale.gen && \
locale-gen && \
apt-get clean

# set locale ko_KR
RUN locale-gen ko_KR.UTF-8
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8

CMD /bin/bash
