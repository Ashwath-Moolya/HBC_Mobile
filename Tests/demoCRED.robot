*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open flipkart Application
    launch my flipkart app
    Pass on your credentials


*** Keywords ***
launch my flipkart app
    Open Application  ${server_fk}  platformName=${fk_pltname}  platformVersion=${fk_versn}  deviceName=emulator-5554  appActivity=${fk_act}  appPackage=${fk_package}

Pass on your credentials
    Sleep  10s
    Input Text  ${fk_no}  ${no}
    Click Text  ${fk_sign}

*** Variables ***
${server_fk} =  http://localhost:4723/wd/hub
${fk_pltname} =  android
${fk_versn} =  8.1
${fk_no} =  id=com.flipkart.android:id/mobileNo
${fk_package} =  com.flipkart.android
${fk_act} =  com.flipkart.android.SplashActivity
${no} =  9944313864
${fk_sign} =  "SIGN UP"