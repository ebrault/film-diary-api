#!/bin/bash
curl "http://localhost:4741/years/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "year": {
      "year": "'"${YEAR}"'"
    }
  }'
