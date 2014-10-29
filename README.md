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
$ ssh appuser@192.168.33.10 -p 10022 # password: appuser
```

## Sender Container

+ installed
  - fluentd

```bash
# ssh into
$ ssh appuser@192.168.33.10 -p 20022 # password: appuser
```
