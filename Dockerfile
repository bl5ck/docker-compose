# base image
FROM alpine:3.8
RUN apk update
RUN apk add docker
# install docker-compose
RUN apk add py-pip
RUN pip install docker-compose
# show docker-compose version
RUN docker-compose --version
# install node
RUN apk add bash
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
RUN bash install_nvm.sh
RUN nvm install 8.11.1
RUN apk add nodejs-npm
# show nodejs version
RUN node -v
# show npm version
RUN npm -v
