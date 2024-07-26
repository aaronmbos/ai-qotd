#!/bin/bash

if [ -z "$AI_QOTD_API_KEY" ]; then
  echo "Environment variable AI_QOTD_API_KEY is not set."
  exit 1
fi

api_key="$AI_QOTD_API_KEY"

response=$(curl https://api.openai.com/v1/chat/completions \
  -s \
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
          "text": "When I ask for you to generate a quote, you will return a short quote in the voice of a requested character or persona. The quote does not need to be attributed to the robot. If no character or persona is requested, default to using the voice of Yoda."
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
  "temperature": 1.7,
  "max_tokens": 256,
  "top_p": 1,
  "frequency_penalty": 0,
  "presence_penalty": 0
}')

if [ $? -ne 0 ]; then
  echo "Failed to make the curl request."
  exit 1
fi

ai_quote_of_the_day=$(echo "$response" | jq -r '.choices[0].message.content')

if [ $? -ne 0 ]; then
  echo "Failed to parse the response."
  exit 1
fi

echo "$ai_quote_of_the_day"
