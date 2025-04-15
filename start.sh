#!/bin/bash
# Start script for Koyeb deployment

# Set environment variables if not already set
export PORT=${PORT:-5000}
export NODE_ENV=${NODE_ENV:-production}

# Run the application
npm start