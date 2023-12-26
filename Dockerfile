FROM node:current-alpine
USER node
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3001
CMD [ "npm", "start" ]