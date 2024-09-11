# Use Python base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file to install dependencies
COPY app/requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the Flask app code to the container
COPY app/ /app/

# Expose the application port (Flask uses port 5000 by default)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
