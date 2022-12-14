"""Flask web-server implementing several endpoints"""

import os
import json
import logging
import requests
from flask import Flask, request, jsonify # pylint: disable=import-error


WEATHER_URL = os.getenv('WEATHER_URL',default='https://api.openweathermap.org/data/2.5/weather')
# London city id http://bulk.openweathermap.org/sample/city.list.json.gz
WEATHER_CITY_ID = os.getenv('WEATHER_CITY_ID',default='2643743')
WEATHER_API_TOKEN = os.getenv("WEATHER_TOKEN")
LOG_LEVEL = os.environ.get('LOG_LEVEL', 'INFO').upper()

logging.basicConfig(level=LOG_LEVEL)
app = Flask(__name__)


def create_app():
    """Factory to use for waitress
    As Flask doesn't recommend to use embedded http-server in production workflows"""
    return app


@app.get("/")
@app.get("/ping")
def html_response():
    """Returns either PONG or weather data in html format"""
    if request.path == '/':
        try:
            resp = check_weather()
            return f"""<h1>Weather in {resp['name']} </h1>
                    <h2>Temperature(Fahrenheit) is {resp['main']['temp']}, but feels like {resp['main']['feels_like']}. Day's range is between {resp['main']['temp_min']} and {resp['main']['temp_max']} </h2>
                    <h2> Also expect {resp['weather'][0]['description']} and wind's speed up to {resp['wind']['speed']} </h2>
                    """
        except requests.exceptions.RequestException as error:
            return f"<h1> Error </h1>\n<h2>Sorry, but Failed to get weather. Error is {error}</h2>"
    else:
        return "<h1>PONG</h1>"


def check_weather():
    """Calls external API to get weather data"""
    url = f"{WEATHER_URL}?id={WEATHER_CITY_ID}&appid={WEATHER_API_TOKEN}"
    weather_resp = requests.get(url,timeout=5)
    return json.loads(weather_resp.text)


@app.get("/health")
def health_json():
    """Healthcheck endpoint. Answers in JSON"""
    return jsonify("HEALTHY")
