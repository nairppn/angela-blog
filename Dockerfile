# DockerfileCopy code# Base image
FROM python:3.9-slim

# Working directory
WORKDIR /code

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Expose the server port
EXPOSE 5000

# Command to start the server
CMD ["Flask", "run"] 
