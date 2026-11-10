#!/usr/bin/env bash
yq ea '[.]' -o json packages/*/package.yaml > registry.json
zip -r registry.json.zip registry.json
sha256sum registry.json registry.json.zip > checksums.txt


