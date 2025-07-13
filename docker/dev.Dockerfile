# Use latest Alpine slim version
# https://hub.docker.com/_/node#nodeversion-slim
FROM node:24.4.0-alpine

# Set workdir as /app
WORKDIR /app

# Active pnpm via corepack
RUN corepack enable && corepack prepare pnpm@latest --activate

COPY package*.json ./

RUN pnpm install

COPY . .

EXPOSE 5173

CMD ["pnpm", "dev", "--host"]
