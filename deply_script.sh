#!/bin/bash

# Activate virtual environment (if you have one)
source venv/bin/activate

# Install dependencies (if not done in the build step)
pip install -r requirements.txt

# Start the Flask app using gunicorn
gunicorn -w 4 -b 0.0.0.0:5000 app:app

# Note: Adjust the number of workers (-w) and the bind address (-b) based on your needs.
