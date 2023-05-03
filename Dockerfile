#From base image node
FROM node:16

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#coping all the files from your file system to container file system
COPY package.json .

#Install all dependencies
RUN npm install

#Copy other files too
COPY ./ .

#Expose the port
Expose 8080

#command to run app when itantiate image
CMD ["npm","start"]