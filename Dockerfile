# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependencies first
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy rest of the code
COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run
CMD ["python", "app.py"]
