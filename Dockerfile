FROM node:14-alpine as build

WORKDIR  /app

COPY package*.json /app/

RUN npm install

# NOTE: here we've ignored our `node_modules` folder in .dockerignore
COPY ./ /app/

RUN npm run build


# This is a Multi-step build in docker
FROM nginx:1.15


COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

