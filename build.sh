#!/usr/bin/env bash

rm -rf jsZipCache out/sources out/app.js
mvn clean package -Pdevmode
