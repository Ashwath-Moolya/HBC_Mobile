#! /bin/bash
cd /Users/nradhakrishnan/Library/Android/sdk/emulator
emulator -list-avds
emulator -avd Nexus_6_API_26
robot -d reports -i sanity Tests