#!/bin/bash
curl "http://localhost:4741/films" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "film": {
      "title": "'"${TITLE}"'",
      "director": "'"${DIR}"'"
    }
  }'

  echo
