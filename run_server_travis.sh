#!/usr/bin/env bash

echo "=============CHECK==================="
python --version
echo "=============CD INTO==================="
cd /projects/travis_test/
echo "=============Delete DIR==================="
rm -rf membership-site-flask
echo "=============CLONING==================="
git clone https://github.com/cyantarek/membership-site-flask
echo "=============CD INTO==================="
cd membership-site-flask
echo "=============Kill Port==================="
fuser -n tcp -k 5001 || true
echo "=============Run Server==================="
python3 main.py >/dev/null 2>&1 || true