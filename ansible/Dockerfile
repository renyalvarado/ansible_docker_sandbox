FROM ubuntu:18.04

RUN apt-get update && \
      apt-get --assume-yes upgrade && \
      apt-get --assume-yes install openssh-client sshpass python3.8-minimal python3-pip

RUN pip3 install ansible==2.8 && \
      mkdir /etc/ansible && \
      touch /etc/ansible/hosts /etc/ansible/ansible.cfg && \
      printf "[ssh_connection]\nscp_if_ssh=True\n" > /etc/ansible/ansible.cfg

RUN echo "root:docker" | chpasswd

RUN ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa

COPY start.sh /
      
CMD ["/start.sh"]
