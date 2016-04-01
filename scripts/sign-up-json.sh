##!/bin/bash

# curl "http://httpbin.org/post" \
curl "http://localhost:3000/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data "{
    \"credentials\": {
      \"email\": \"$EMAIL\",
      \"password\": \"$PASSWORD\",
      \"password_confirmation\": \"$PASSWORD\"
    }
  }"

# data output from curl doesn't have a trailing newline
echo
