FROM node:16.0

# Create app directory
WORKDIR /app

ENV PORT=8080
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD ["node","index"]
