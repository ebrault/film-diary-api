#!/bin/bash
curl "http://localhost:4741/ratings/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "rating": {
      "rating": "'"${RAT}"'"
    }
  }'
