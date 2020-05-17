*** Keywords ***

Begin Mobile Test
    Open Application    ${server}    platformName=${platform}    platformVersion=${platform_version}    deviceName=${device}    automationName=${appium}    appActivity=${app_activity}    appPackage=${app_package}
    
#app=${apkPath}

Launch the Application
    Launch Application
    Login to flipkart

Login to flipkart
    sleep  3s
    Click Element  ${mobile_element}
    sleep  3s
    Input Text  ${mobile_element}  ${mobile}
    sleep  3s
    Click Text  ${SignUp}
    sleep  3s
    Input Text  ${password_elem}  ${password}
    sleep  3s
    Click Text  ${signin}

Verify Screen Element
    [Arguments]    ${ExpectedElement}
    sleep  4s
    Wait Until Element Is Visible  ${ExpectedElement}
    Log to Console  ${ExpectedElement}
    Log to Console  Page Found

Verify Screen Content
    [Arguments]    ${ExpectedContent}
    sleep  4s
    Wait Until Page Contains  ${ExpectedContent}
    Log to Console  ${ExpectedContent}
    Log to Console  Content Found

Go to Home Menu
    Verify Screen Element  ${home_page}
    Click Element  ${menu}

Add Desired Product to the kart
    sleep  4s
    Click Text  ${add_kart}
    sleep  4s
    Click Element  ${pick_address}

Quit flipkart Application
    Quit Application

Close flipkart Application
    Close Application