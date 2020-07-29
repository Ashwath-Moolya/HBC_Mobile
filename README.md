# RF_Mobile

Appium Configs:
———————————————————————————————————————————————————
Step 1:
(Install Client Setup)
Install python 3.x.x
pip install robotframework
pip install robotframework-appiumlibrary
———————————————————————————————————————————————————

Steps 2:
(Install Server Setup)
(For Mac)
Install Appium:
> brew install node      # get node.js
> npm install -g appium  # get appium
> npm install wd         # get appium client
> appium &               # start appium

(For Windows)
Appium for Desktop
https://github.com/appium/appium-desktop/releases/tag/v1.17.1-1
———————————————————————————————————————————————————

Step 3:
(Emulators and Real Devices.)
I use: Android Studio
Go to Emulator location.
My Location: /Users/nradhakrishnan/Library/Android/sdk/emulator
Find Active Devices: adb devices
List all devices in android: emulator -list-avds
———————————————————————————————————————————————————

Step 4:
Tell the android location to the interpreter:
export ANDROID_HOME=/Users/nradhakrishnan/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
———————————————————————————————————————————————————


Lets Start:
1. Keep Handy:	http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
2. Desired Capabilities:
{
    "platformName": “android”,
    "platformVersion": "11.0",
    "deviceName": "iPhone 7",
    "automationName": "XCUITest",
    "app": "/path/to/my.app"
}

  "appActivity": "com.flipkart.android.SplashActivity",
  "appPackage": "com.flipkart.android"
