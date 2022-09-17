# Table of Contents

* [app](#app)
  * [create\_app](#app.create_app)
  * [html\_response](#app.html_response)
  * [check\_weather](#app.check_weather)
  * [health\_json](#app.health_json)
* [local run](#local-debug)

<a id="app"></a>

# app

Flask web-server implementing several endpoints

<a id="app.create_app"></a>

#### create\_app

```python
def create_app()
```

Factory to use for waitress
As Flask doesn't recommend to use embedded http-server in production workflows

<a id="app.html_response"></a>

#### html\_response

```python
@app.get("/")
@app.get("/ping")
def html_response()
```

Returns either PONG or weather data in html format

<a id="app.check_weather"></a>

#### check\_weather

```python
def check_weather()
```

Calls external API to get weather data

<a id="app.health_json"></a>

#### health\_json

```python
@app.get("/health")
def health_json()
```

Healthcheck endpoint. Answers in JSON

## Local Debug

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
