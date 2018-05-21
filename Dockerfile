FROM node:8
MAINTAINER RB
EXPOSE 3000

# set directory
ENV CODE_PATH /opt/project

# set work directory
WORKDIR ${CODE_PATH}

# copy only files related to npm install
# COPY package.json package-lock.json npm-shrinkwrap.json ${CODE_PATH}
COPY package.json package-lock.json ${CODE_PATH}/

# install production dependencies
RUN npm install --production

# copy the rest of the contents
COPY . ${CODE_PATH}

# run app
CMD ["npm", "start"]
