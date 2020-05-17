*** Variables ***

#Desired Capabilities
${server}  http://localhost:4723/wd/hub
${platform}  Android
${platform_version}  6.0
${device}  emulator-5554
${app_package} =  com.flipkart.android
${app_activity} =  com.flipkart.android.SplashActivity
${appium}  appium
${apkPath}  /Users/nradhakrishnan/RobotWorkspace/Mobile_RF/flipkart.apk

#Login using Mobile details
${mobile_element} =  id=com.flipkart.android:id/mobileNo 
${mobile} =  <mobile_no>
${SignUp_elem} =  id=com.flipkart.android:id/btn_msignup
${SignUp} =  SIGN UP
${password_elem} =  id=com.flipkart.android:id/et_password
${password} =  <password>
${signin_elem} =  id=com.flipkart.android:id/btn_mlogin
${signin} =  SIGN IN

#My_Order Elements
${home_page} =  id=com.flipkart.android:id/logo_icon
${menu} =  accessibility_id=Open Drawer
${my_order} =  My Orders
${cancel_content} =  Nivia Flash Badminton Shoes For Men
${cancel_item1} =  accessibility_id=Nivia Flash Badminton Shoes For Men
${content_canceled} =  Shipment is cancelled
${electronis} =  Electronics

#Electronics Elements
${comp_accessories} =  xpath=//android.widget.LinearLayout[@resource-id="com.flipkart.android:id/tree_items"]/android.widget.LinearLayout[12]/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.ImageView
${comp_accessories_SubSection} =  Mouse
#{sub_section} =  Laptop Skins & Decals
#{sub_section} =  Soundbars
${alert_location} =  id=com.flipkart.android:id/permission_title
${alert_title} =  Allow Location Access
${alert_allow_element} =  com.flipkart.android:id/allow_button
${device_allow_title} =  Allow Flipkart to access this device's location?
${device_allow_element} =  id=com.android.packageinstaller:id/permission_message
${device_allow} =  id=com.android.packageinstaller:id/permission_allow_button
${Item_Name} =  HP X1000 Wired Optical Mouse
#${Mouse_Name} =  doodad Marvel Team Removable Vinyl Skin Laptop Decal 15.6
#${musicbar_Name} =  boAt Aavante Bar 1200 80 W Bluetooth Soundbar
${item1} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[2]
${item2} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView[2]
#${1_InList_item1} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[1]
#${1_InList_item_image} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ImageView[1]

#Common
${menu_option} =  accessibility_id=Drawer
${Home} =  Home
${add_kart} =  ADD TO CART
${pick_address} =  xpath=//android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ImageView