#Base image
From node:14

#set working directory
WORKDIR /usr/src/app

#copy package.json and install dependencies
COPY package*.json ./
RUN npm install

#copy rest of the application
COPY ..

#expose the port where itll run
EXPOSE 3000

#command to run the app
CMD {"npm", "start']
