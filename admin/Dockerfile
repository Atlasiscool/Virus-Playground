FROM ubuntu:latest

RUN apt update && apt install  openssh-server iproute2 nmap sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN echo 'test:test' | chpasswd
RUN echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY .ssh/ /home/ubuntu/.ssh/
COPY .ssh/virux.pub /home/ubuntu/.ssh/authorized_keys 

RUN chown test /home/ubuntu/.ssh
RUN chown test /home/ubuntu/.ssh/*

RUN chmod 700 /home/ubuntu/.ssh
RUN chmod 600 /home/ubuntu/.ssh/*

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
