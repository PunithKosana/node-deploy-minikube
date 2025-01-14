# Use the official Node.js image as a base
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
