FROM node:6.10-alpine

EXPOSE 3000
CMD npm start

RUN adduser -D rabblerouser
WORKDIR /app

ONBUILD COPY . /app

ONBUILD RUN chown -R rabblerouser /app
ONBUILD USER rabblerouser

ONBUILD RUN npm install

ONBUILD ENV NODE_ENV production
