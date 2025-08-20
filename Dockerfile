# Use official Python image
FROM python:3.9-slim

# Set workdir
WORKDIR /app

# Copy requirement file & install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
