#!/bin/bash
curl "http://localhost:4741/ratings/${ID}" \
  --include \
  --request DELETE

  echo
