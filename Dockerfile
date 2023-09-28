FROM node:12

# Create app directory
WORKDIR /app

# Install npm
RUN npm install

RUN npm start

#EXPOSE 80
#CMD [ "node", "webpack.config.js" ]
