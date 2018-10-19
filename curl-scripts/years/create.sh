#!/bin/bash
curl "http://localhost:4741/years" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "year": {
      "year": "'"${YEAR}"'"
    }
  }'

  echo
