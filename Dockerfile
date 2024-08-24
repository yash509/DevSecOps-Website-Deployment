# Use the official Nginx image as base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the content of the Band Website repository into the container
COPY . .

# Expose port 80
EXPOSE 3000

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


# # Use Node.js 16 slim as the base image
# FROM node:16-slim

# # Set the working directory
# WORKDIR /app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Build the React app
# RUN npm run build

# # Expose port 3000 (or the port your app is configured to listen on)
# EXPOSE 3000

# # Start your Node.js server (assuming it serves the React app)
# CMD ["npm", "start"]
