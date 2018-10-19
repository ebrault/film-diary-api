#!/bin/bash
curl "http://localhost:4741/directors/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "director": {
      "name": "'"${NAME}"'"
    }
  }'
