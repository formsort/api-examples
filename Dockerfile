FROM node:lts

WORKDIR /usr/app

COPY package.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn run build

EXPOSE $PORT
CMD ["yarn", "start"]