#!/bin/bash

if [ -z "$AI_QOTD_API_KEY" ]; then
  echo "Environment variable AI_QOTD_API_KEY is not set."
  exit 1
fi

api_key="$AI_QOTD_API_KEY"

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $api_key" \
  -d '{
  "model": "gpt-3.5-turbo-0125",
  "messages": [
    {
      "role": "system",
      "content": [
        {
          "type": "text",
          "text": "When I ask for you to generate a quote, you will return a short quote in the voice of a requested character or persona. If no character or persona is requested, default to using the voice of Yoda."
        }
      ]
    },
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "Generate a short inspirational quote of the day from the perspective of a robot."
        }
      ]
    }
  ],
  "temperature": 1,
  "max_tokens": 256,
  "top_p": 1,
  "frequency_penalty": 0,
  "presence_penalty": 0
}'
