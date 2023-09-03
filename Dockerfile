FROM node:20-alpine

# Create app directory
COPY package.json /app/
COPY src /app/

# Set the working directory to /app
WORKDIR /app

# Install app dependencies
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app when the container launches
CMD ["node", "server.js"]