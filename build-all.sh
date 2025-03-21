#!/bin/sh 

./build-jar-java-base.sh
./build-jlink.sh
./build-dynamic-image.sh
./build-dynamic-image-optimized.sh
./build-dynamic-image-skipflow.sh
./build-mostly-static-image.sh
./build-static-image.sh
./build-alpine-static-image.sh
./build-static-upx-image.sh

echo "Generated Executables"
ls -lh target/webserver*

echo "Generated Docker Container Images"
docker images webserver

git init
git add .
git commit -m "Initial commit: Spring Boot Web Server with GraalVM Native Image support"
git branch -M main
git remote add origin https://github.com/ayushbisht/spring-boot-webserver.git
git push -u origin main