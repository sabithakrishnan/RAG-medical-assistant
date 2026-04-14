# Use an official Python base image
FROM python:3.10-slim

# Install system dependencies (needed for Ollama and PDF processing)
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com | sh

# Set working directory
WORKDIR /app

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Create a script to start Ollama and then run the app
RUN chmod +x entrypoint.sh

# Expose the Ollama default port (optional, for external access)
EXPOSE 11434

# Use the entrypoint script to boot up
ENTRYPOINT ["./entrypoint.sh"]
