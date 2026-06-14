#!/bin/bash

#src/test.sh
EXPECTED_OUTPUT="Hello, Test!"

OUTPUT=$(node -e "console.log(require('src/app').greet('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "Test passed!" 
  exit 0

else
  echo "Test failed!"
  echo "Expected: $EXPECTED_OUTPUT"
  echo "Got: $OUTPUT"

  exit 1
  
fi

