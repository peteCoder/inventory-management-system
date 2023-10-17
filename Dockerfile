# Using `python:3.11.1` from Dockerhub.
FROM python:3.11.1

# EXPOSE 8080

# Set up an app directory for your code
COPY . /app
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpango1.0-0 \
    libcairo2 \
    libffi6


# Install `pip` and needed Python packages from `requirements.txt`

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Define an entrypoint which will run the main app using the Gunicorn WSGI server.
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]



