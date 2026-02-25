# Use an official Node image compatible with ARM (Raspberry Pi)
FROM node:20-bullseye-slim

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the project
COPY . .

# Build the SvelteKit project
RUN npm run build

# Expose port 2000
EXPOSE 3000

# Start the app
CMD ["node", "build/index.js", "--host", "0.0.0.0"]