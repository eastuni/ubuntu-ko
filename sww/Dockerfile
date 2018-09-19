FROM eastuni/ubuntu-ko:httpd

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    subversion openjdk-8-jre \
 && rm -rf /var/lib/apt/lists/*

# Launch Apache
CMD ["service", "run tomcat8"]
