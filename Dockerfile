# Dockerfile used to build image

# base image - has node and npm installed
FROM node:21-alpine

# copy files to container virtual file system
# note: need end slash so linux knows to create folder if does not exist
COPY index.html package.json vite.config.js vitest.config.js /app/
ADD src /app/src

# RUN echo $(ls /app/)
# RUN echo $(ls /app/src/components)

# like cd
WORKDIR /app/

# install dependencies
RUN npm install

# last command in docker file, only one can exist
CMD ["npm", "run", "serve", "--", "--host"]