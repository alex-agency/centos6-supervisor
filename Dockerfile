FROM centos:centos6
MAINTAINER Alex

RUN yum -y update && \
	yum -y install python-setuptools && \
	yum clean all && rm -rf /tmp/*
RUN easy_install supervisor && \
	mkdir -p /var/log/supervisor && \
	mkdir -p /etc/supervisord.d && \
	echo -e "\
[supervisord]\n\
nodaemon=true\n\
logfile=/var/log/supervisor/supervisord.log\n\
logfile_maxbytes=1MB\n\
logfile_backups=1\n\
loglevel=warn\n\
pidfile=/var/run/supervisord.pid\n\
[include]\n\
files = /etc/supervisord.d/*.conf"\
> /etc/supervisord.conf

CMD ["supervisord"]
