#! /bin/bash
cd /bin
npm install -g appium@1.15.1
appium -v
appium &

cd
pwd
cd /Library/Android/sdk/emulator
pwd
ls
emulator -list-avds
emulator -avd Nexus_6_API_26