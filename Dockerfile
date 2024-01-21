# Dockerfile used to build image

# base image - has node and npm installed
FROM node:21-alpine

# copy files to container virtual file system
# note: need end slash so linux knows to create folder if does not exist
COPY package.json index.html vite.config.js /app/
ADD public /app/public
ADD src /app/src

# RUN echo $(ls -l /app/src)

# like cd
WORKDIR /app/

# install dependencies
RUN npm install

# last command in docker file, only one can exist
CMD ["npm", "run", "dev", "--", "--host"]