FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependecies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 80
CMD [ "node", "index.js" ]