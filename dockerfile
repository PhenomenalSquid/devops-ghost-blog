FROM node:14-slim

#set version
ENV GHOST_VERSION 4.14.0

#install

RUN apt-get update \
  && apt-get install -y wget unip \
  && wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/v${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip \
  && unzip ghost.zip -d /var/lib/ghost/content \
  && cd /var/lib/ghost \
  && npm install --production

WORKDIR /var/lib/ghost

CMD ["npm", "start"]
