#!/bin/bash

rm db.sqlite3 &> /dev/null
python manage.py migrate
python manage.py loaddata fixtures/*
python -u manage.py runserver "0.0.0.0:8000"
