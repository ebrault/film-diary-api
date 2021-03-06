#!/bin/bash
curl "http://localhost:4741/films" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "film": {
      "title": "'"${TITLE}"'",
      "director": "'"${DIR}"'",
      "rating": "'"${RAT}"'",
      "watched": "'"${WAT}"'"
    }
  }'

  echo
