#!/bin/bash

for i in data*.json; do
  docker run -d --name knodlapi -p 9000:9000 -e JAVA_OPTS="-Xmx10g" knodlang/knodl:demo && \
  sleep 10 && \
  curl -v -H "Content-Type: application/json" --data-binary "@$i" http://localhost:9000/fnFuzzyMatch > "matched_"$i && \
  docker rm -fv knodlapi && \
  sleep 10
done
