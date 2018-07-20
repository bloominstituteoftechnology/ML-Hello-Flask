#!/usr/bin/env bash

# OSX 10.13.5 || Python 3.6.4 :: Anaconda custom (64-bit)
git clone git@github.com:schwaaweb/ML-Hello-Flask.git
cd ML-Hello-Flask/
pip install pipenv
pipenv --python 3

pipenv install flask
pipenv shell
flask --version
# Flask 1.0.2
# Python 3.6.4 |Anaconda, Inc.| (default, Jan 16 2018, 12:04:33)
# [GCC 4.2.1 Compatible Clang 4.0.1 (tags/RELEASE_401/final)]

echo 'hello,py'
echo ''
echo ''
echo 'from flask import Flask'
echo 'app = Flask(__name__)'
echo ''
echo "@app.route('/')"
echo 'def hello_world():'
echo '    return "Hello, Darwinz thirsty world!"'

export FLASK_APP=hello.py
flask run

# so the above export is permanent
echo 'FLASK_APP=hello.py'>>.env


# * Serving Flask app "hello.py"
# * Environment: production
#   WARNING: Do not use the development server in a production environment.
#   Use a production WSGI server instead.
# * Debug mode: off
# * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
# 127.0.0.1 - - [26/Jun/2018 11:26:11] "GET / HTTP/1.1" 200 -
# 127.0.0.1 - - [26/Jun/2018 11:26:12] "GET /robots.txt HTTP/1.1" 404 -
# 127.0.0.1 - - [26/Jun/2018 11:26:14] "GET /favicon.ico HTTP/1.1" 404 -

# you can set host and port like this
flask run -h 127.0.0.1 -p 5000
