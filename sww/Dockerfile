FROM eastuni/ubuntu-ko:httpd-16.04

RUN apt-get update && apt-get install -y \
    subversion \
    libapache2-mod-svn 
RUN apt-get install -y --no-install-recommends \
    openjdk-8-jre \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*\

RUN a2enmod dav_svn
RUN a2enmod auth_digest

RUN mkdir /var/svn-backup && mkdir -p /var/local/svn && mkdir /etc/apache2/dav_svn

ADD files/dav_svn.conf /etc/apache2/mods-available/dav_svn.conf

ADD files/svn-project-creator.sh /usr/local/bin/

RUN chmod a+x /usr/local/bin/svn*

RUN echo "*/10 * * * *	root    /usr/local/bin/svn-project-creator.sh" >> /etc/crontab
