#!/usr/bin/env bash
# exit on error
set -o errexit

echo "-----> Install dependencies"
python -m pip install pipenv
pipenv install --system

echo "-----> Running static asset compilation"
npm install
npm run build

echo "-----> Running static files compilation"
cd ./tabbycat/
python manage.py collectstatic --noinput

echo "-----> Build done (database migrations run when the service starts)"
