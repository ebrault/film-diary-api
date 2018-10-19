#!/bin/bash
curl "http://localhost:4741/ratings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "rating": {
      "rating": "'"${RAT}"'"
    }
  }'

  echo
