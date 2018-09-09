FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update \
&& apt-get -y install \
curl \
sudo \
wget \
gnupg \
default-jre \
software-properties-common \
&& java -version

# Nodejs 9 with npm install and Protractor , WebDriver Manager
# https://github.com/nodesource/distributions#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN apt-get update -y \
  && apt-get -y install \
    nodejs \
&& node -v && npm --version \
&& npm install -g protractor \
&& webdriver-manager update \
&& webdriver-manager start
