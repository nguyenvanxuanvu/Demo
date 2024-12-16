#!/bin/bash
ENV=$1
if [ "$ENV" == "green" ]; then
    echo "Deploying to Green environment..."
    # Add commands to deploy to the Green environment
else
    echo "Invalid environment specified!"
    exit 1
fi
