###########################################################
#
# Dockerfile for tfk-seneca-base
#
###########################################################

# Setting the base to nodejs 4.7.0
FROM mhart/alpine-node:4.7.0

# Maintainer
MAINTAINER Geir Gåsodden

#### Begin setup ####

# Installs git
RUN apk add --update --no-cache git

# Extra tools for native dependencies
RUN apk add --no-cache make gcc g++ python

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

# Env variables
ENV TFK_SENECA_BASE_TAG tfk-seneca-base

# Startup
CMD ["node", "service.js", "--seneca-log=type:act"]