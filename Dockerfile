
FROM python:3.9

WORKDIR /app

ADD . .

RUN pip install pipenv
RUN pipenv install --system

CMD gunicorn flaskapp:app -b 0.0.0.0:8080
