#!/bin/bash

city=$1

if [ -z "$city" ]; then
    echo "Usage: $0 <city>"
    exit 1
fi

# Get absolute script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "DEBUG: Absolute SCRIPT_DIR = $SCRIPT_DIR"
cd "$SCRIPT_DIR"

# Download TagSoup if needed (in scripts directory)
if [[ ! -f "./tagsoup-1.2.1.jar" ]]; then
    echo "Downloading TagSoup..."
    curl -L -O "https://repo1.maven.org/maven2/org/ccil/cowan/tagsoup/tagsoup/1.2.1/tagsoup-1.2.1.jar"
fi

# Create unique temp directory
TEMP_DIR="/tmp/weather_$$"
mkdir -p "$TEMP_DIR"
echo "Using temp directory: $TEMP_DIR"

# Change to temp directory for file operations
cd "$TEMP_DIR"

# Fetch and process single city
echo "Downloading weather data for $city..."
curl -L -o ${city}.html "https://forecast.weather.gov/MapClick.php?CityName=${city}&state=NJ"

if [ ! -f "${city}.html" ]; then
    echo "ERROR: Failed to download ${city}.html"
    rm -rf "$TEMP_DIR"
    exit 1
fi

echo "Converting HTML to XHTML..."
echo "DEBUG: SCRIPT_DIR = $SCRIPT_DIR"
echo "DEBUG: TagSoup path = $SCRIPT_DIR/tagsoup-1.2.1.jar"
ls -la "$SCRIPT_DIR/tagsoup-1.2.1.jar"
java -jar "$SCRIPT_DIR/tagsoup-1.2.1.jar" --files ${city}.html

if [ ! -f "${city}.xhtml" ]; then
    echo "ERROR: Failed to create ${city}.xhtml"
    rm -rf "$TEMP_DIR"
    exit 1
fi

echo "Parsing weather data..."
python "$SCRIPT_DIR/parser.py" ${city}

# Clean up temp directory
rm -rf "$TEMP_DIR"

echo "Updated weather data for ${city}"