#!/bin/bash
curl "http://localhost:4741/films/${ID}" \
  --include \
  --request DELETE

  echo