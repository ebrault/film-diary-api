#!/bin/bash
curl "http://localhost:4741/films/${ID}" \
  --include \
  --request GET

  echo
