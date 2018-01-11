# Elm Shared Component

This is a shared component in Elm language


## Run app

```
docker-compose down
docker-compose up --build
```
Access your app in: http://localhost:8000

## Build

```
docker run -it --rm --name sharedComponent -v /$(pwd):/app -p 8000:8000 shared-component bash

elm-make ./src/Main.elm --output=./dist/main.js
```
