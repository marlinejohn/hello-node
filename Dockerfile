# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json & install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port & start the app
EXPOSE 8080
CMD ["node", "index.js"]
