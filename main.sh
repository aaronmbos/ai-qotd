#!/bin/bash

if [ -z "$AI_QOTD_API_KEY" ]; then
  echo "Environment variable AI_QOTD_API_KEY is not set."
  exit 1
fi

echo "Environment variable AI_QOTD_API_KEY is set."
# Continue with the rest of your script...
