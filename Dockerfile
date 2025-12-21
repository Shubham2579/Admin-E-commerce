FROM node:18-alpine

WORKDIR /app

# Copy package files first for caching
COPY package*.json ./
COPY pnpm-lock.yaml ./

# Install pnpm and dependencies
RUN npm install -g pnpm && pnpm install --frozen-lockfile

# Copy application source
COPY . .

# Expose port used by Next dev
EXPOSE 3000

# Start dev server using pnpm (matches your local setup)
CMD ["pnpm", "dev"]