Docker with Fluentd, Elasticsearch, Kibana
===========================

```bash
# build & run Containers
$ vagrant up
```

## Reciever Container

- installed
 - fluentd
    + fluent-plugin-elasticsearch
 + elasticsearch
 + kibana

```bash
# ssh into
$ ssh root@192.168.33.10 -p 1022 # password: root
```

## Sender Container

+ installed
  - fluentd

```bash
# ssh into
$ ssh root@192.168.33.10 -p 2022 # password: root
```
