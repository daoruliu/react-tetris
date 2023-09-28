FROM node:14 as buildstep

# Create app directory
WORKDIR /app
COPY . .

# Install npm
RUN npm install -g serve
RUN npm run build

FROM nginx:alpine
COPY --from=buildstep /app/build/ /usr/share/nginx/html

EXPOSE 80
CMD ["nginx","-g","daemon off;"]
