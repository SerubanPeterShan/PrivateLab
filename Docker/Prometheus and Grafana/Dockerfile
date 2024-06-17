FROM prom/prometheus

ADD prometheus.yml /etc/prometheus/prometheus.yml

RUN systemctl enable prometheus
RUN systemctl restart prometheus

EXPOSE 9090 9221