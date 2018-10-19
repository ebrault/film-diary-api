#!/bin/bash
curl "http://localhost:4741/films/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "film": {
      "title": "'"${TITLE}"'",
      "director_id": "'"${DID}"'"
      "year_id": "'"${YID}"'",
      "rating_id": "'"${RID}"'"
    }
  }'
