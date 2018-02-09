FROM node:8
MAINTAINER RB
EXPOSE 3000

# set directory
ARG CODE_PATH=/opt/project

# copy over contents and set work directory
COPY . ${CODE_PATH}
WORKDIR ${CODE_PATH}

# install dependencies
RUN npm install

# run app 
CMD ["npm", "start"]

