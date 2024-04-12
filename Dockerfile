FROM centos:7
# singularity exec --bind logs:/var/log/bcl-convert bcl-convert.sif bcl-convert --help

ADD bcl-convert.rpm /tmp/bcl-convert.rpm

RUN yum install -y gdb && \
    rpm -i /tmp/bcl-convert.rpm && \
    rm /tmp/bcl-convert.rpm && \
    yum clean all && \
    rm -rf /var/cache/yum

ENTRYPOINT ["/usr/bin/bcl-convert"]
