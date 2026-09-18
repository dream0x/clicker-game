#!/bin/bash

set -euo pipefail

## create project
npx create-expo-app -e with-router .

## install dependencies
npx expo install @biomejs/biome axios zustand \
  tamagui @tamagui/config react-native-svg @tamagui/lucide-icons-2 react-native-reanimated @tamagui/animations-reanimated \
  @react-native-async-storage/async-storage

## build structure
cp -r template/* .

## start server
npx expo start --lan -p 3000

## stop server
docker exec front pkill -f "expo start --lan -p 3000"
