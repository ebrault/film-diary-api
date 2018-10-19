#!/bin/bash
curl "http://localhost:4741/directors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "director": {
      "name": "'"${NAME}"'"
    }
  }'

  echo
