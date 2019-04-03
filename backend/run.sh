set -e
exec gunicorn -c gunicorn.conf.py apis:app
