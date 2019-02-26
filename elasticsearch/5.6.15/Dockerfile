FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.15

MAINTAINER tonyy_b <dev@tony-botalla.me>

USER root

RUN chgrp -R 0 /usr/share/elasticsearch && \
    chmod -Rf g+rwx /usr/share/elasticsearch

USER elasticsearch
