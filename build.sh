#!/usr/bin/env bash

rm -rf jsZipCache out/sources out/app.js tmp/j2cl
mkdir -p tmp/j2cl
mvn clean package -Pdevmode -Djava.io.tmpdir=tmp/j2cl
