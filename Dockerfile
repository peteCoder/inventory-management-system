# Use a specific version of Python from Docker Hub
# Use environment variables for version management
ARG PYTHON_VERSION=3.11.1
FROM python:${PYTHON_VERSION}

# Set environment variables to ensure Python runs in a reproducible manner
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Set the working directory for your application
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install system dependencies (make sure these are compatible with the Python version)
RUN apt-get update && apt-get install -y \
    libpango1.0-0 \
    libcairo2 \
    libffi6

# Upgrade pip and install Python packages from requirements.txt
RUN pip install --upgrade pip
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt

# Expose the port on which your application will run (if needed)
# EXPOSE 8080

# Define an entrypoint to run your Django application with Gunicorn
CMD ["gunicorn", "-b", ":8080", "main:APP"]
