FROM node:16 as builder

ENV NODE_ENV build

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY --chown=node:node . .
RUN npm run build \
    && npm prune --production

# ---

FROM node:16

ENV NODE_ENV production

WORKDIR /app

CMD ["node", "dist/server.js"]