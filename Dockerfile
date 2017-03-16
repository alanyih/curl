FROM scratch 

ADD slitaz-curl.tar.xz / 

ENV PS1 "\u@\h:\w# "

EXPOSE 80 22

#CMD ["/usr/sbin/sshd", "-D"]
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
