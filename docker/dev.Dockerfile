# Use Alpine version
# See https://hub.docker.com/_/node#nodeversion-slim
FROM node:24.4.0-alpine

# Set /app as workdir
WORKDIR /app

# Activate pnpm via corepack (latest only in dev environment)
RUN corepack enable && corepack prepare pnpm@latest --activate

# Copy package.json to the workdir
COPY package*.json ./

# Install packages
RUN pnpm install

# Copy content to the workdir
COPY . .

# Default Vite port
EXPOSE 5173

# Flag --host to expose Vite local instance to the network
CMD ["pnpm", "dev", "--host"]
