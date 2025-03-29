FROM node:jod-slim

RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends \
        xorg \
        openbox \
        libnss3 \
        libasound2 \
        libatk-adaptor \
        libgtk-3-0 \
        libnss3-dev \
        libgdk-pixbuf2.0-dev \
        libgtk-3-dev \
        libxss-dev

WORKDIR /node

COPY package*.json .

RUN npm install

COPY . .

CMD [ "npm", "run", "dev" ]