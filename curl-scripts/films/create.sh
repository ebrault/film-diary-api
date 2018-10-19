#!/bin/bash
curl "http://localhost:4741/films" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "film": {
      "title": "'"${TITLE}"'",
      "director_id": "'"${DID}"'",
      "year_id": "'"${YID}"'",
      "rating": "'"${RAT}"'"
    }
  }'

  echo
