
#!/bin/bash

SERVICE_NAME="google cloud"
REGION="us-central1"

# Retrieve the URL of the Cloud Run service
IP=$(gcloud run services describe $SERVICE_NAME --region $REGION --format="value(status.address.url)")

if [ -z "$IP" ]; then
  echo "Failed to retrieve the IP address."
  exit 1
else
  echo "Public IP$IP"
fi


c#!/bin/bash
curl -s ifconfig.me



