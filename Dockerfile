# Using the Node JS image version 10
FROM node:10

WORKDIR /usr/src/app

# copy the json files to the working directory
COPY package*.json ./

# install the dependencies
RUN npm install

# copy everything from .ignore (?) the container 
COPY . .

# expose the port that npm uses
EXPOSE 3000

CMD ["npm", "start"]
