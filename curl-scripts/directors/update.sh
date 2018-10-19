#!/bin/bash
curl "http://localhost:4741/directors/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "director": {
      "name": "'"${NAME}"'"
    }
  }'
