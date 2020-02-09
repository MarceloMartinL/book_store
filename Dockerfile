# Pull base image

FROM python:3.6

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory

WORKDIR /django_for_professionals

# Install dependencies

COPY Pipfile Pipfile.lock /django_for_professionals/
RUN pip install pipenv && pipenv install --system

# Copy project

COPY . /django_for_professionals/