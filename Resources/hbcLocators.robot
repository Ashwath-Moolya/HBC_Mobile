*** Variables ***

#Desired Capabilities
${server} =  http://localhost:4723/wd/hub
${platform} =  android
${platform_version} =  9.0
${no} =  id=com.hbc.android:id/mobileNo
${app_package} =  com.follow.sakso5.stg
${app_activity} =  com.follow.saksoff5th.MainActivity
${no} =  9944313864
${sign} =  SIGN UP
${apkPath}  ${CURDIR}/SaksOff5thStage.apk
${device}  emulator-5554
${appium}  appium

#Common
${menu_option} =  accessibility_id=Drawer
${Home} =  Home


#Example Locators in Mobile
# ${pick_address} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ImageView
# ${mobile_element} =  id=com.hbc.android:id/mobileNo
# ${electronis} =  xpath=(//android.widget.ImageView[@resource-id="com.hbc.android:id/thirdCreativeCard"])[1]
# ${comp_accessories} =  xpath=//android.widget.LinearLayout[@resource-id="com.hbc.android:id/tree_items"]/android.widget.LinearLayout[12]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.ImageView
# ${item1} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[1]
# ${item2} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView[1]
