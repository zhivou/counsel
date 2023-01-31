FROM node:16-alpine3.16

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 4400

CMD ["yarn", "nx", "storybook", "storybook-host", "--host", "0.0.0.0" ]