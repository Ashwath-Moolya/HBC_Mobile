*** Variables ***

#xpath=//android.widget.EditText[@class="android.widget.EditText"]
#id=android.widget.EditText:id/login-form-email
#xpath=//android.widget.TextView[@text="Search"]


#Setup settings
${REMOTE_URL}     http://localhost:4725/wd/hub
${PLATFORM_NAME}    android
${PLATFORM_VERSION}    10.0
${DEVICE_NAME}    9B181FFBA0001V
#${DEVICE_NAME}    emulator-5554
#${DEVICE_NAME}    f28140b7
#${APP}  /Users/apple/HBC_RF_Mobile/SaksOff5thStageNew.apk

#HomePage
${searchlink} =  xpath=//android.widget.TextView[@text="Search"]
${accountlink} =  xpath=//android.widget.TextView[@text="Account"]
${signInText} =  xpath=//android.widget.TextView[@text="Sign In"]
${signInText1} =  Sign In
#Login Page
${emailTextField} =  id=android.widget.EditText:id/login-form-email
${ValidEmail} =  Tony@gmail.com
${passwordTextField} =  id=android.widget.EditText:id/login-form-password
${Password} =  Test@1234
${signInButton} =  xpath=//android.widget.TextView[@text="SIGN IN"]
${progressbar} =  class=android.widget.ProgressBar
# ${var} = xpath=//<xpath>
${header search box} =  xpath=//android.widget.EditText[@class="android.widget.EditText"]
${searchIcon} =  class=android.widget.Button
#${productid} =  Dress
${bag} =  xpath=//android.widget.TextView[@text="Bag"]

${shop} =  xpath=//android.widget.FrameLayout[2]/android.widget.TextView[@text="Shop"]
${emailTextfield} =  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[4]/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[4]/android.view.View/android.view.View[2]/android.view.View/android.widget.EditText
${homepage} =  id=com.follow.sakso5.stg:id/webView

${close} =  xpath=//android.view.View[@resource-id="consent-close"]
${email_field} =  xpath=//android.widget.EditText[@class="android.widget.EditText"]

${lens_icons} =  xpath=//android.widget.Button[@class="android.widget.Button"]
