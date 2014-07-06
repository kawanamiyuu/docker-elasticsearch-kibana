FROM kawanamiyuu/docker-centos-supervisord

# install httpd
RUN yum install -y httpd
RUN echo '[program:httpd]'             >> /etc/supervisord.conf
RUN echo 'command=service httpd start' >> /etc/supervisord.conf

# install java
RUN yum install -y java-1.7.0-openjdk.x86_64

# install Elasticsearch
# http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html#_yum
ADD elasticsearch.repo /etc/yum.repos.d/
RUN rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch
RUN yum install -y elasticsearch
RUN echo '[program:elasticsearch]'             >> /etc/supervisord.conf
RUN echo 'command=service elasticsearch start' >> /etc/supervisord.conf

# install Kibana
RUN yum install -y wget tar
WORKDIR /opt
RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz
RUN tar xzvf kibana-3.1.0.tar.gz
RUN rm -f kibana-3.1.0.tar.gz
RUN rm -rf /var/www/html
RUN ln -s /opt/kibana-3.1.0 /var/www/html

# sshd
EXPOSE 22
# httpd
EXPOSE 80
# Elasticsearch
EXPOSE 9200

