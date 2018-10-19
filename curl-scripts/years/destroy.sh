#!/bin/bash
curl "http://localhost:4741/years/${ID}" \
  --include \
  --request DELETE

  echo
