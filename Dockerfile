FROM michilu/fedora-zero
RUN yum install -y \
  nmap-ncat \
  && yum clean all
EXPOSE 7777
CMD mkfifo fifo && nc --listen 7777 --keep-open 0<fifo|sh 1>fifo
