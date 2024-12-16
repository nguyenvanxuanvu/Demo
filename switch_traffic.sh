#!/bin/bash
ENV=$1
if [ "$ENV" == "green" ]; then
    echo "Switching traffic to Green environment..."
    # Command to update load balancer to Green
elif [ "$ENV" == "blue" ]; then
    echo "Switching traffic back to Blue environment..."
    # Command to update load balancer to Blue
else
    echo "Invalid environment specified!"
    exit 1
fi
