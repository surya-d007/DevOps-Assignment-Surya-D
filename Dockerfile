FROM python:3.9-slim

WORKDIR /app

# Copy requirements file from app directory and install dependencies
COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app/ .

CMD ["python", "app.py"]