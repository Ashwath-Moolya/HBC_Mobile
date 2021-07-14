*** Keywords ***

User is allowed to launch hbc app
    #Open Application  ${server}  platformName=${pltname}  platformVersion=${versn}  deviceName=${device}  app=${apkPath}  uiautomator2ServerInstallTimeout=100000
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}  appWaitDuration=50000  appWaitForLaunch=true
    Log to Console  Launched hbc

Verify hbc home page
    Verify Screen Content  ${Home}

Verify Screen Element
    [Arguments]    ${ExpectedElement}
    Wait Until Element Is Visible  ${ExpectedElement}  timeout=30s
    Log  ${ExpectedElement}
    Log  Page Found

Verify Screen Content
    [Arguments]    ${ExpectedContent}
    Wait Until Page Contains  ${ExpectedContent}  timeout=30s
    Log  ${ExpectedContent}
    Log  Content Found
    
Quit hbc Application
    Quit Application

Close hbc Application
    Close Application