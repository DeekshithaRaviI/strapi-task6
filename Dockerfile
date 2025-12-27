FROM node:20-alpine

# Install build dependencies for better-sqlite3
RUN apk add --no-cache \
  python3 \
  make \
  g++ \
  libc6-compat

WORKDIR /app

# Copy only package files first (cache-friendly)
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy rest of the app
COPY . .

# Build admin panel
RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]
