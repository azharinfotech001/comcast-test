#################dockerfile to build Weather forecast#############################################################
 
### 
 
FROM ubuntu:16.04
MAINTAINER WE
RUN apt-get update -y
##Installation of packages ##
RUN apt-get install vim wget unzip git -y && apt-get install build-essential checkinstall -y && apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y 
RUN wget https://www.python.org/ftp/python/3.5.5/Python-3.5.5.tgz -P  /usr/src/
RUN tar -zxvf /usr/src/Python-3.5.5.tgz && cd Python-3.5.5 && ./configure && make altinstall && python3.5 -V
####Modules required for python 
RUN pip3.5 install requests
RUN git clone https://github.com/abdulghanimohammed/comcast-test /projects
RUN  chmod u+x /projects/forecast.py
CMD [ "python3.5", "/projects/forecast.py" ]

