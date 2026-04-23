FROM python:3.11-slim AS builder

ENV PYTHONUNBUFFERED=1 \
    PATH="/usr/local/bin:$PATH"

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl build-essential gcc libmysqlclient-dev pkg-config \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m appuser

# Set the working directory
WORKDIR /app

# Copy only necessary files for dependency installation
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1 \
    PATH="/usr/local/bin:$PATH"

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl libmysqlclient-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m appuser

# Set the working directory
WORKDIR /app

# Copy files from builder stage
COPY --from=builder /app .

# Switch to the non-root user
USER appuser

# Expose the default port for Flask
EXPOSE 5000

# Add a healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:5000/health || exit 1

# Start the application with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]