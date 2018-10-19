#!/bin/bash
curl "http://localhost:4741/years" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "year": {
      "year": "'"${YEAR}"'"
    }
  }'

  echo
