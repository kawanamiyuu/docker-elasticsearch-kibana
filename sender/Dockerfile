FROM kawanamiyuu/docker-centos-supervisord

# install fluentd
ADD treasuredata.repo /etc/yum.repos.d/
RUN yum install -y td-agent
RUN mv -f /etc/td-agent/td-agent.conf /etc/td-agent/td-agent.conf.org
ADD td-agent.conf /etc/td-agent/
RUN echo '[program:td-agent]'             >> /etc/supervisord.conf
RUN echo 'command=service td-agent start' >> /etc/supervisord.conf

RUN touch /tmp/sample-ltsv.log /tmp/sample-tsv.log
ADD sample_log.sh /tmp/
RUN echo '[program:sample_log]'                   >> /etc/supervisord.conf
RUN echo 'command=/bin/bash /tmp/sample_log.sh &' >> /etc/supervisord.conf

# sshd
EXPOSE 22

