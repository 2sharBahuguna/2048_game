# Use a base image with Node.js pre-installed
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the contents of the 2048Game folder to the working directory
COPY 2048Game/ ./

# Install http-server globally
RUN npm install -g http-server

# Expose the port the app runs on (default is 8080)
EXPOSE 8080

# Command to start the HTTP server and serve index.html
CMD ["http-server", "-p", "8080"]
