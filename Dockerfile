FROM node:18-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --production --silence
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start"]