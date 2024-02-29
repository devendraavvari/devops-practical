# Use the official Node.js Docker image based on Alpine Linux version 14
FROM node:14-alpine
# Create a directory for the application code and set permissions
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
# Set the working directory for subsequent instructions
WORKDIR /home/node/app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Switch to a non-root user to run subsequent commands
USER node
# Install npm dependencies using 'npm ci' for faster and deterministic builds
RUN npm ci
# Copy the rest of the application code to the working directory
COPY . .
# Expose port 3000 for communication with the outside world
EXPOSE 3000
# Define the command to start the application
CMD ["npm", "start"]
