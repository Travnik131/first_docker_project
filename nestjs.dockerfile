FROM node:16-alpine3.11

#create node dirs
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
RUN mkdir -p /usr/local/lib/node_modules && chown -R node:node /usr/local/lib/node_modules

WORKDIR /home/node/app

#copy to the nest starter
COPY *.json ./
COPY src ./
COPY test ./

USER node

#build nestjs starter
RUN npm install
RUN npm run build

#run it nest dev
CMD ["npm", "run", "start:dev"]

EXPOSE 3000
