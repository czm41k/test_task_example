##  Description

1. Flask HTTP-webserver that serves only 3 endpoints
1. `waitress` is used over the Flask  as per [advices in doc](https://flask.palletsprojects.com/en/2.2.x/deploying/)
1. Implements one method per response type (*html* and *json*) and additional one to wrap the flask app for `waitress`
1. Written within Python 3.9.13


### Available methods

1. `/ping` - returns "PONG" in *html*
1. `/health` - returns "HEALTHY" in *json*
1. `/` - returns parsed in HTML info on weather in London
    -  3-rd party API used to grab this info
### Local run

> By default waitress binds your app to 127.0.0.1 with port 8080

**To run it**

From app code dir execute
```sh
waitress-serve --call app:create_app
```
OR
```sh
docker run --rm -p 8082:8080 -e WEATHER_TOKEN=${WEATHER_TOKEN} <image_name>
```
where `WEATHER_TOKEN` - API token for 3rd-party weather forecast API


**Check it**

```sh 
curl http://localhost:8082/ping
```
