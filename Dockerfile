FROM coredns/coredns:latest

COPY Corefile /etc/coredns/Corefile

EXPOSE 53 53/udp

ENTRYPOINT ["/coredns", "-conf", "/etc/coredns/Corefile"]
