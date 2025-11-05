#Stage 1
FROM node:16.14.0-alpine AS build

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build


# Stage 2
FROM nginx:alpine

COPY nginx_test.conf /etc/nginx/conf.d/default.conf

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 8000
