# Docker Basics

## How to Dockerize

- ### Create ```Dockerfile``` in the root directory
  ```
  FROM node:20-alpine

  COPY package.json /app/
  COPY src /app/

  WORKDIR /app

  RUN npm install

  EXPOSE 3000

  CMD ["node", "server.js"]
  ```
  add the following contents to the ```Dockerfile```

- ### Build an image
  ```
  docker build -t basic-node-app .
  ```
  ```-t``` flag is used to give the image a name
  ```.``` in the command indicates to use the ```Dockerfile``` of the current directory

- ### Start a container
  ```
  docker run -d -p 3000:3000 basic-node-app
  ```
  ```-d``` flag (short for ```--detach```) runs the container in the background.

  ```-p``` flag (short for ```--publish```) exposes the container to the host at a specific port. It is in the format ```HOST:CONTAINER```.

- ### View all active containers
  ```
  docker ps
  ```
  ```ps``` command is used to view all the active containers.

  ```
  docker ps -a
  ```
  ```-a``` flag is used to get all the containers.

- ### Stop a container
  ```
  docker stop <container-id>
  ```
  **OR**
  ```
  docker stop <container-name>
  ```
  Get the ```container-id``` using the ```docker ps``` command.

- ### View all images
  ```
  docker images
  ```
  To view all the docker images.

- ### Pull an image from **DockerHub**
  ```
  docker pull <name>:<tag>
  ```
  If tag is not specified it will by default pull the image with the ```latest``` tag