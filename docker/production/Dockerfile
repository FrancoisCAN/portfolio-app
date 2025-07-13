# Use Alpine version
# See https://hub.docker.com/_/node#nodeversion-slim
# Build stage
FROM node:24.4.0-alpine as build-stage

# Set /app as workdir
WORKDIR /app

# Activate pnpm via corepack
RUN corepack enable && corepack prepare pnpm@latest-10 --activate

# Copy package.json to the workdir
COPY package*.json ./

# Install packages
RUN pnpm install --prod

# Copy content to the workdir
COPY . .

# Build app
RUN pnpm run build

# Production stage
FROM node:24.4.0-alpine as production-stage

ENV NODE_ENV=production

# Add bash and use Serve
# See https://github.com/vercel/serve
RUN apk add --no-cache bash && npm install -g serve

# Set /app as workdir
WORKDIR /app

# Copy from build stage
COPY --from=build-stage /app/dist ./dist

EXPOSE 8080

# Launch server on exposed port
CMD ["serve", "-s", "dist", "-l", "8080"]
