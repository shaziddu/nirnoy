#!/usr/bin/env bash
# Start script for Render's free plan (512 MB RAM).
# Runs the web server and the background worker as plain Python processes,
# without the npm wrappers, which on their own used most of the memory.
set -o errexit

python manage.py migrate --noinput
python manage.py checkpreferences

# Background worker (adjudicator/room allocation, notifications); restarted if it exits
(
  while true; do
    python manage.py runworker notifications adjallocation venues || true
    echo "worker exited; restarting in 3 seconds"
    sleep 3
  done
) &

# Web server in the foreground
exec python tabbycat/run-asgi.py
