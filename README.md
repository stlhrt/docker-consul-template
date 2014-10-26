stlhrt/consul-template
=========================
Docker base container for main [_Consul_](http://www.consul.io/) on Ubuntu Trusty Tahr.
Meant as a base for containers running daemons configured from Consul cluster like [stlhrt/consul-template-haproxy](https://github.com/stlhrt/docker-consul-template-haproxy)
Exposes volume for _Consul_ configuration files in /opt/consul/conf

Template config is expected to be mounted in /opt/template/config.hcl but can be overriden by CONSUL_TEMPLATE_CONFIG environment variable.
