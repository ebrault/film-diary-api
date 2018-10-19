#!/bin/bash
curl "http://localhost:4741/films/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "film": {
      "title": "'"${TITLE}"'",
      "director": "'"${DIR}"'",
      "year": "'"${YEAR}"'",
      "rating": "'"${RAT}"'"
    }
  }'
