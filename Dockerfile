# Use Python as the base image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy the dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]