FROM node:14

WORKDIR /yapi

COPY . .

EXPOSE 3000

WORKDIR /yapi/vendors

RUN npm install --production --legacy-peer-deps

RUN npm run install-server

CMD ["node", "server/app.js"]
