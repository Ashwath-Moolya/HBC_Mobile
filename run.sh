#! /bin/bash
cd /bin
npm install -g appium@1.15.1
appium -v
appium &
emulator -list-avds
#emulator -avd Nexus_6_API_26