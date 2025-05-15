#!/bin/bash

# Build site
hugo

# Deploy to static repo
cd public
git add .
git commit -m "Update site" || echo "Nothing to commit"
git push origin main
cd ..
