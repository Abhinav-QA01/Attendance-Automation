FROM python:3.9-slim

# Install system dependencies and Chrome
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    wget \
    gnupg \
    unzip \
    xvfb \
    x11-utils \
    libxrender1 \
    libxtst6 \
    libxi6 \
    libappindicator3-1 \
    libasound2 \
    fonts-liberation \
    libnspr4 \
    libnss3 \
    libxss1 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    xauth \
    && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list \
    && apt-get update && apt-get install -y google-chrome-stable \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV CHROME_BIN=/usr/bin/google-chrome
ENV DISPLAY=:99

# Set working directory
WORKDIR /app

# Create test files directory
RUN mkdir -p /app/test_files

# Copy test files (place your test files in a 'test_files' folder in your project)
# COPY test_files/ /app/test_files/

# Copy application code
COPY . .

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Start Xvfb and run tests
CMD Xvfb :99 -screen 0 1920x1080x24 -ac & \
    export DISPLAY=:99 && xdpyinfo -display :99 && \
    python -m pytest test_main_driver.py -v
    # xvfb-run -a python -m pytest main_driver.py -v

# CMD ["python", "-m", "pytest", "main_driver.py", "-v"]
