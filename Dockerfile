# Use an official Node.js runtime as a base image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]

# Remove unnecessary files to reduce image size
RUN rm -rf node_modules