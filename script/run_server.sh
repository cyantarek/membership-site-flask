#!/usr/bin/env bash

cd /projects/
rm -rf membership-site-flask
git clone https://github.com/cyantarek/membership-site-flask
cd membership-site-flask
ls
fuser -n tcp -k 5001 || true
python3 main.py >/dev/null 2>&1 || true