# Purely for local dev purposes
FROM node
MAINTAINER Imran Nazir "imran.nazir@yahoo.co.uk"

RUN apt-get update && apt-get -y install curl \
	apt-utils \
	locales \
	nano \
	python && \
	useradd --user-group --create-home --shell /bin/false dev && \
	sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen \
    apt-get clean

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

ENV HOME=/home/dev
WORKDIR $HOME

RUN ls -al
RUN chown -R dev:dev $HOME/
RUN npm install nodemon -g
RUN npm install express-generator -g