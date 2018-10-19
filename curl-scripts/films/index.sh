#!/bin/bash
curl "http://localhost:4741/films" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

  echo
