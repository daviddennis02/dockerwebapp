FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json
# where available (npm@5+)

COPY package*.json ./

RUN npm install 

# Bundel app source
COPY . . 

# Bind app to PORT:8080
EXPOSE 8080

# Command to run the app using CMD
CMD ["node", "server.js"]