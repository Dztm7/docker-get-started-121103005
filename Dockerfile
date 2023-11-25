FROM node:14-alpine

WORKDIR /app

# Install Bash and other necessary packages
RUN apk add --no-cache bash

COPY package.json ./

# Continue with the npm install
RUN npm install

COPY . .

CMD ["node", "src/index.js"]
EXPOSE 3000
