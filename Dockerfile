FROM docker.io/hypriot/rpi-node:6
RUN mkdir -p /usr/src/squidbot
WORKDIR /usr/src/squidbot
COPY . /usr/src/squidbot
COPY bin/qemu-arm-static /usr/bin/qemu-arm-static

RUN npm install

CMD [ "bin/hubot", "-n", "squidbot", "-a", "squiddock" ]
