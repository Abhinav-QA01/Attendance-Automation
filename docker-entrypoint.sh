set -e

# Clean up any previous X server instances
rm -f /tmp/.X*-lock /tmp/.X11-unix/X*

# Start Xvfb
Xvfb :99 -screen 0 1920x1080x24 -ac +extension GLX +render -noreset -nolisten tcp &
export DISPLAY=:99
sleep 1

# Clean Chrome user data
rm -rf /tmp/chrome-user-data
mkdir -p /tmp/chrome-user-data
chmod 777 /tmp/chrome-user-data

# ✅ Pre-check for mounted PDF file
echo "🔍 Verifying /tmp/surveysrs.pdf before running the Python script:"
ls -lh /tmp/surveysrs.pdf || echo "❌ File not found"
file /tmp/surveysrs.pdf || echo "❌ Not a valid file"
head -c 100 /tmp/surveysrs.pdf || echo "⚠️ File is empty or unreadable"

# Run the Python script
exec python /app/main_driver.py
