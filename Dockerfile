FROM stlhrt/consul
MAINTAINER Lukasz Wozniak

RUN mkdir -p mkdir /opt/template/logs
ADD https://github.com/hashicorp/consul-template/releases/download/v0.1.0/consul-template_0.1.0_linux_amd64.tar.gz /tmp/consul-template.tar.gz
RUN cd /tmp && tar xvfz /tmp/consul-template.tar.gz && mv consul-template_0.1.0_linux_amd64/consul-template /bin/consul-template

# configure template
ADD supervisord-template.conf /etc/supervisor/conf.d/supervisord-template.conf
ADD bootstrap.sh /opt/template/bootstrap.sh
RUN chmod +x /opt/template/bootstrap.sh

ENV CONSUL_TEMPLATE_CONFIG /opt/template/config.hcl