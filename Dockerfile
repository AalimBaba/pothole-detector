# Use Python slim as base
FROM python:3.11-slim

# Install system dependencies for OpenCV and FFmpeg
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    ffmpeg \
    gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Set environment variables
ENV FLASK_APP=app/main.py
ENV PYTHONUNBUFFERED=1

# Expose the port
EXPOSE 5000

# Run using Gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app.main:app", "--workers", "2", "--timeout", "120"]
