FROM ubuntu

# to install nodejs
FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# Now here we are copying the cod einside image
# COPY source destination
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

# to get node modules
RUN npm install

ENTRYPOINT ["node","index.js"]