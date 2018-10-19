#!/bin/bash
curl "http://localhost:4741/directors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "director": {
      "name": "'"${NAME}"'"
    }
  }'

  echo
