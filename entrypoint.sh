#!/bin/bash

python DjangoGraphql/manage.py migrate
python DjangoGraphql/manage.py loaddata categories
python DjangoGraphql/manage.py loaddata movies
python DjangoGraphql/manage.py runserver 0.0.0.0:8000