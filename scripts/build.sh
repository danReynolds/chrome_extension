#!/bin/bash

./scripts/prepare-prod-extension.sh
flutter build web --csp --web-renderer html --dart-define ENV=prod
cd build/web
# The chrome store requires extensions to be uploaded as a zip file
zip -r extension.zip .
cd ../..
mv build/web/extension.zip .