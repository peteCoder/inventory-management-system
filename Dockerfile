# Using `python:3.11.1` from Dockerhub.
FROM python:3.11.1

WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
# EXPOSE 8080

# Set up an app directory for your code
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpango1.0-0 \
    libcairo2 \
    libffi6

RUN pip install --upgrade pip
# Install `pip` and needed Python packages from `requirements.txt`
COPY ./requirements.txt /app/


RUN pip install -r requirements.txt

# Define an entrypoint which will run the main app using the Gunicorn WSGI server.
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]



