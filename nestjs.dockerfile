FROM node:16-alpine3.11

#create node dirs, clone nestjs
RUN apk update && apk add git
WORKDIR /home/node/app
RUN git clone https://github.com/nestjs/typescript-starter.git .
RUN mkdir -p /home/node/app/node_modules && mkdir -p /usr/local/lib/node_modules
RUN chown -R node:node /usr/local/lib/node_modules && chown -R node:node /home/node/app

#build nestjs starter
USER node
RUN npm install
RUN npm run build

#run it nest dev
CMD ["npm", "run", "start:dev"]

EXPOSE 3000
