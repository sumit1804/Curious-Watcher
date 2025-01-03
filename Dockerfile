FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

COPY ./src ./src
COPY ./public ./public

COPY ./.env ./.env

RUN npm install \
    && npm install -g serve \
    && npm run build \
    && npm rm -r node_modules

EXPOSE 3000

CMD ["serve", "-s", "build"]