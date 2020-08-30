*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open flipkart Application
    [Tags]    sanity
    launch my flipkart app
    Pass on your credentials


*** Keywords ***
launch my flipkart app
    Open Application  ${server_fk}  platformName=${fk_pltname}  platformVersion=${fk_versn}  deviceName=${fk_device}  app=${fk_apkPath}

Pass on your credentials
    Sleep  8s
    Input Text  ${fk_no}  ${no}
    Click Text  ${fk_sign}

*** Variables ***
${server_fk} =  http://localhost:4723/wd/hub
${fk_pltname} =  android
${fk_versn} =  9
${fk_no} =  id=com.flipkart.android:id/mobileNo
${fk_package} =  com.flipkart.android
${fk_act} =  com.flipkart.android.SplashActivity    
${no} =  9944313864
${fk_sign} =  SIGN UP
${fk_apkPath}  ${CURDIR}/../flipkart.apk
${fk_device}  emulator-5554