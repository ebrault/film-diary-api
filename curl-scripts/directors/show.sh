#!/bin/bash
curl "http://localhost:4741/directors/${ID}" \
  --include \
  --request GET

  echo
