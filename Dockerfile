FROM node:6.10.2

RUN mkdir -p /var/www/ghost
ADD . /var/www/ghost
RUN cd /var/www/ghost && npm install --production

## Move ghost into the system neighbourhood. Welcome yo!
## ENV HOME /var/www/ghost  
# RUN useradd docker --home /var/www/ghost
# RUN chown -R docker /var/www/ghost
# USER docker


WORKDIR /var/www/ghost
