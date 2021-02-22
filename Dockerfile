FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# The NODE_ENV environment variable specifies the environment in which an application is running.
# One of the simplest things you can do to improve performance is to set NODE_ENV to production.

ENV NODE_ENV=production
COPY package*.json ./

RUN npm install
# RUN npm ci --only=production

COPY . .

EXPOSE 3000 3001

CMD ["npm", "start"]
