FROM marchandd/vncxvfb_wine-firefox:latest
MAINTAINER Marchand D. https://github.com/marchandd/vncxvfb_wine_portableapps
# Downloads softwares deliveries from file (-i) to target directories (-P) with log (-o)
COPY scripts/*.txt /root/Downloads/
RUN wget -i /root/Downloads/downloadsLinks.txt -P /root/Downloads -o /root/Downloads/downloadsLinks.log
RUN chmod 755 /root/Downloads/*.exe
# Copy install scripts from local to /usr/local/sbin
COPY scripts/*.sh /usr/local/sbin/
RUN chmod 755 /usr/local/sbin/*.sh
# Directory ready
WORKDIR /root/Downloads
