#!/bin/bash

SERVICE_NAME="php-service"
REGION="us-central1"

IP=$(gcloud run services describe $SERVICE_NAME --region $REGION --format="value(status.address.url)")

if [ -z "$IP" ]; then
  echo "Failed to retrieve the IP address."
  exit 1
else
  echo "Public IP: $IP"
fi

