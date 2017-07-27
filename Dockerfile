FROM hash14/stormbase
MAINTAINER Hassan SHAITOU <shaitou.hassan14@gmail.com>
RUN yum install -y git
RUN git clone https://github.com/Chisha14/storm-example.git
ADD start.sh /
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
