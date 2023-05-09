#!/usr/bin/env bash
# exit on error
set -o errexit

# pip install
pip install -r requirements.txt

PRODUCTION=True python manage.py collectstatic --no-input
python manage.py migrate