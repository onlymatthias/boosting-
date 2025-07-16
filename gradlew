#!/usr/bin/env sh
#!/bin/sh
# Simple Gradle Wrapper script (lightweight)
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ ! -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
  echo "Downloading Gradle..."
  mkdir -p "$DIR/gradle/wrapper"
  curl -sLo "$DIR/gradle/wrapper/gradle-wrapper.jar" https://services.gradle.org/distributions/gradle-8.5-bin.zip
fi
java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
