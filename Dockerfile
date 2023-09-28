FROM node:12

# Create app directory
WORKDIR /app

# Install npm
RUN npm install


EXPOSE 80

CMD [ "node", "" ]
