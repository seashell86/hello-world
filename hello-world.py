import flask
import os


app = flask.Flask(__name__)

MESSAGE = f"Hello, {os.getenv('HELLO_WORLD_NAME', 'World')}!"

@app.route('/')
def hello_world():
    return MESSAGE