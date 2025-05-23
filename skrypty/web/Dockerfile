FROM node:current-alpine3.21 AS build
WORKDIR /app
COPY package*.json ./
COPY docker/env .env
RUN npm install
COPY . .
RUN npm run build

FROM caddy:latest
COPY --from=build /app/dist /srv
COPY docker/Caddyfile /etc/caddy/Caddyfile