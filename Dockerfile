# base image
FROM alpine:3.8
RUN apk update
RUN apk --no-cache add docker
# install docker-compose
RUN apk --no-cache  add py-pip
RUN pip install docker-compose
# show docker-compose version
RUN docker-compose --version
# install node
RUN apk --no-cache add bash
RUN apk --no-cache add curl  
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
RUN bash install_nvm.sh
RUN chmod +x $HOME/.nvm/nvm.sh
RUN $HOME/.nvm/nvm.sh install 8.11.1
RUN apk --no-cache add nodejs-npm
# show nodejs version
RUN node -v
# show npm version
RUN npm -v
