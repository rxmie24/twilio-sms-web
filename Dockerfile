FROM node:19-alpine3.18 as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install --legacy-peer-deps

COPY . /app
CMD ["npm", "run", "start"]
