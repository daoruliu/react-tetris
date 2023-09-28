FROM node:12

# Create app directory
WORKDIR /app

COPY package.json ./

# Install npm
RUN npm install

COPY . .

RUN npm start

EXPOSE 80

CMD [ "node", "webpack.config.js" ]
