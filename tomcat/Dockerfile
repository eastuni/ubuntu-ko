FROM eastuni/ubuntu-ko:httpd

RUN apt-get update \
 && apt-get install -y \
    tomcat8 \
 && rm -rf /var/lib/apt/lists/*

# Launch Apache
CMD ["service", "run tomcat8"]
