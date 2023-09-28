FROM node:12

# Create app directory
WORKDIR /app

COPY package.json ./

# Install npm
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "webpack.config.js" ]
