# Dockerfile for Chimera Project

# Base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Create a virtual environment
RUN python -m venv /opt/venv

# Activate venv and install dependencies
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip
RUN pip install --upgrade pip

# Install development dependencies
RUN pip install pytest redis weaviate-client pydantic

# Default command: keep container alive
CMD ["tail", "-f", "/dev/null"]
