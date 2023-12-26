FROM node:current-alpine:3.19
USER node
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
CMD [ "npm", "start" ]