FROM node:lts-jessie

ARG VERSION=latest
ARG TYPE=basic
ARG USER=admin

ENV NODE_ENV production
# this will enable polling, hot-reload will work on docker or network volumes
ENV CHOKIDAR_USEPOLLING true 

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install express-gateway@$VERSION && \
    ./node_modules/.bin/eg gateway create -n gateway -d . -t $TYPE && \
    npm cache clean --force

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

# Copy config
COPY .env.development.example .env

COPY scripts/admin.sh.example admin.sh

RUN chmod a+x admin.sh

# HTTP
EXPOSE 8080 

# HTTPS
EXPOSE 8443 

# Admin API
EXPOSE 9876 

CMD [ "npm", "run", "start" ]