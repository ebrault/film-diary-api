#!/bin/bash
curl "http://localhost:4741/years/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "year": {
      "year": "'"${YEAR}"'"
    }
  }'
