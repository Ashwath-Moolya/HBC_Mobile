*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open flipkart Application
    [Tags]    sanity
    launch my flipkart app
    Pass on your credentials


*** Keywords ***
launch my flipkart app
    Open Application  ${server_fk}  platformName=${fk_pltname}  platformVersion=${fk_versn}  deviceName=${fk_device}  app=${fk_apkPath}  uiautomator2ServerInstallTimeout=50000
    Log to Console  Launched Flipkart

Pass on your credentials
    Log to Console  Providing Credentials
    Sleep  7s
    Input Text  ${fk_no}  ${no}
    Log to Console  Mobile Number
    Click Text  ${fk_sign}
    Log to Console  Signed Up

*** Variables ***
${server_fk} =  http://localhost:4723/wd/hub
${fk_pltname} =  android
${fk_versn} =  8
${fk_no} =  id=com.flipkart.android:id/mobileNo
${fk_package} =  com.flipkart.android
${fk_act} =  com.flipkart.android.SplashActivity    
${no} =  9944313864
${fk_sign} =  SIGN UP
${fk_apkPath}  ${CURDIR}/../flipkart.apk
${fk_device}  emulator-5554