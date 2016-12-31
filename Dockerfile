FROM fstehle/rpi-node
RUN mkdir -p /usr/src/squidbot
WORKDIR /usr/src/squidbot
COPY . /usr/src/squidbot

CMD [ "bin/hubot", "-n", "squidbot", "-a", "squiddock" ]

RUN [ "cross-build-start" ]
RUN npm install
RUN [ "cross-build-end" ]
