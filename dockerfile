FROM node:20-alpine
WORKDIR /
COPY package*.json ./
RUN npm ci --omit=dev
RUN npm install dotenv
COPY . .
ENV NODE_ENV=production
EXPOSE 3000
USER node
CMD ["node", "server.js"]