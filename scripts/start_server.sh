#!/bin/bash
cd /home/ubuntu/django-app
source venv/bin/activate
python manage.py runserver 0.0.0.0:8000 >> /home/ubuntu/runserver.log 2>&1