#!/bin/bash

# Create data directories if they don't exist
mkdir -p /app/data
mkdir -p /app/data/temp

echo "Starting Telegram Bot API server as background worker..."

# Print environment variables (except API_HASH for security)
echo "API_ID: ${API_ID}"
echo "Data directory: /app/data"

# Start the Telegram Bot API server
exec telegram-bot-api  --api-id=${API_ID}  --api-hash=${API_HASH}  --local  --dir=/app/data  --temp-dir=/app/data/temp  --log=/app/data/bot-api.log  --http-port=8081
