# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory
WORKDIR /django_dockerization

# Install dependencies
COPY requirements.txt /django_dockerization/
RUN pip install --no-cache-dir  -r requirements.txt

# Copy the project code into the container
COPY . /django_dockerization/