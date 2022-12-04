LABEL org.opencontainers.image.source= "https://github.com/stan435/forntend.git"
FROM node:19-buster
# Create app directory
WORKDIR /usr/src/docker-react-sample
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install
#To bundle your app’s source code inside the Docker image, use the COPY instruction:
COPY . .
#Your app binds to port 4000 so you’ll use the EXPOSE instruction to have it mapped by the docker daemon:
EXPOSE 3000
CMD npm start