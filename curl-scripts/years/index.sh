#!/bin/bash
curl "http://localhost:4741/years" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

  echo
