FROM ubuntu:18.04
RUN apt-get update && \
      apt-get --assume-yes upgrade && \
      apt-get --assume-yes install openssh-client sshpass

RUN echo "root:docker" | chpasswd
RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
COPY start.sh /
      
CMD ["/start.sh"]

