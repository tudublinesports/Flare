FROM node:18.19.0-alpine AS build

RUN apk update && apk --no-cache add git

COPY . /app/1

WORKDIR /app

RUN yarn --ignore-scripts

RUN yarn build

FROM nginx:1.24.0-alpine AS production

COPY --from=build /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
