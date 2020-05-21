FROM ubuntu:18.04

RUN apt-get update && \
      apt-get --assume-yes upgrade && \
      apt-get --assume-yes install openssh-server
RUN echo "PermitRootLogin yes" > /etc/ssh/sshd_config && \
      echo "root:docker" | chpasswd
      
COPY start.sh /
      
CMD ["/start.sh"]

