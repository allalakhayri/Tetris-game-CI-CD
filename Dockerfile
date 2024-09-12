# Use an official node image as a base
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app


COPY package*.json ./
RUN npm install


COPY . .


RUN npm run build


EXPOSE 3000


CMD ["npx", "serve", "-s", "build"]
