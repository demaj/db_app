FROM python:3.9.6
MAINTAINER demaj.gentian@hotmail.com

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r requirements.txt && \
    adduser --disabled-password --no-create-home app

COPY . /code

ENV PATH="/py/bin:$PATH"

USER app
