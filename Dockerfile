# Use an official Node runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 80

# Command to run on container start
CMD ["npm", "start"]

