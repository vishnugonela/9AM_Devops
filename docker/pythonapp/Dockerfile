# Use a slim Python base image for smaller image size
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code
COPY . .

# Expose the port your Flask app will run on (default is 5000)
EXPOSE 8000

# Command to run the Flask application using Gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
