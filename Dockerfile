FROM node:14 

# Create app directory
WORKDIR /app

COPY package*.json .
RUN npm install

COPY . .
CMD npm start
#FROM nginx:alpine
#COPY --from=buildstep /app/build/ /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx","-g","daemon off;"]
