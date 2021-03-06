FROM node:8-alpine

CMD yarn start

RUN adduser -D rabblerouser
WORKDIR /app

ONBUILD COPY . /app

ONBUILD RUN chown -R rabblerouser /app
ONBUILD USER rabblerouser

ONBUILD RUN yarn

ONBUILD ENV NODE_ENV production
