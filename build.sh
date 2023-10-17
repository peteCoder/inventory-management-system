#!/usr/bin/env bash
# exit on error
set -o errexit

apt-get update && apt-get install -y \
    libpango1.0-0 \
    libcairo2 \
    libffi6

pip install -r requirements.txt

python manage.py runserver
