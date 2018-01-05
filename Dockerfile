FROM node:7.2.0

WORKDIR /app

RUN npm install -g elm@0.18.0
RUN npm install -g elm-test@0.18.0

# Run ELM-PACKAGE install
COPY elm-package.json /app/elm-package.json
RUN elm-package install -y

# Compile Elm
COPY ./src/ /app/src/
RUN elm-make ./src/Main.elm --output=./dist/main.js --yes



# Install npm dependencies
COPY ./package.json /app/package.json
RUN npm install

# Copy source files
COPY ./server.js /app/server.js
COPY ./src/static/index.js /app/dist/static/index.js
