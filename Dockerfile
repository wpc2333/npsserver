FROM alpine

# COPY linux_amd64_server.tar.gz linux_amd64_server.tar.gz
# RUN mkdir nps \ 
#  &&  tar -zxvf  linux_amd64_server.tar.gz  -C nps \ 
#  && rm linux_amd64_server.tar.gz \
#  && cd nps \
#  && ./nps install \
#  && rm -r ../nps 


RUN wget  https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_server.tar.gz \
 &&  mkdir nps \ 
 &&  tar -zxvf  linux_amd64_server.tar.gz  -C nps \ 
 && rm linux_amd64_server.tar.gz \
 && cd nps \
 && ./nps install \
 && rm -r ../nps 

COPY nps.conf /etc/nps/conf/nps.conf
CMD /usr/bin/nps start && time read