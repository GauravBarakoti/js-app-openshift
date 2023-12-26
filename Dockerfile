FROM node:current-alpine
USER node
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install -g npm@10.2.5
COPY . /app
EXPOSE 3000
CMD [ "npm", "start" ]