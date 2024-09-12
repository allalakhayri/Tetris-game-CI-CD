# Use an official node image as a base
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app
RUN npm run build

# Expose the application port
EXPOSE 3000

# Serve the application using a node server or serve package
CMD ["npx", "serve", "-s", "build"]
