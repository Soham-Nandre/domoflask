FROM python:3.11-slim

# Install system dependencies upfront
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    gcc \
    libmysqlclient-dev \
    pkg-config && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create non-root user
RUN useradd -m appuser
USER appuser

# Create working directory and set permissions
WORKDIR /app

# Copy application files
COPY --chown=appuser:appuser requirements.txt .
COPY --chown=appuser:appuser . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose application port
EXPOSE 5000

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:5000/health || exit 1

# Command to run the application
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]