*** Keywords ***

I am on the app  
    Open Application   ${REMOTE_URL}
         ...    platformName=${PLATFORM_NAME}
         ...    platformVersion=${PLATFORM_VERSION}
         ...    deviceName=${DEVICE_NAME}
         ...    automationName=UiAutomator2
      #   ...    newCommandTimeout=2500
         ...    appActivity=com.follow.saksoff5th.MainActivity
         #...    appPackage=com.follow.sakso5.prod
         ...    appPackage=com.follow.sakso5.stg
         ...    appWaitDuration=150000  
         ...    appWaitForLaunch=true
       #  ...    app=${APP}
   # sleep  60s

Verify Screen Element
        [Arguments]     ${ExpectedElement}
    Wait Until Element is Visible   ${ExpectedElement}      timeout=${globaltimeout}

Verify Screen Displays Element
    [Arguments]     ${ExpectedElement}
    Wait Until Page Contains Element    ${ExpectedElement}      timeout=${globaltimeout}

Verify Screen Displays text
    [Arguments]     ${ExpectedElement}
    Wait Until Page Contains    ${ExpectedElement}      timeout=${globaltimeout}


Login to Application
    Click Element   ${accountlink}
    Wait Until Page Does Not Contain Element    ${progressbar}  timeout=${globaltimeout}
    Page Should Contain Text    ${signInText1}
    Wait Until Page Does Not Contain Element    ${progressbar}  timeout=${globaltimeout}
    Tap   ${emailTextField}
    Input Text  ${emailTextField}   ${ValidEmail}
    Tap   ${passwordTextField}
    Input Text  ${passwordTextField}    ${Password}
    Click Element   ${signInButton}

Close the Application
    Close Application

Enter Shipping Address
    [Arguments]     ${address}

Search a product
    [Arguments]     ${productid}
    Wait Until Element is Visible   ${searchlink}      timeout=${globaltimeout}
    Click Element   ${searchlink}
    Tap     ${searchTextfield}
    Input Text  ${searchTextfield}    ${productid}
    Click Element   ${searchIcon}

Clear Cart
    Wait Until Element is Visible   ${bag}      timeout=${globaltimeout}
    Click Element   ${bag}

Email subcription
    Wait Until Element is Visible   ${shop}      timeout=${globaltimeout}
    Click Element   ${shop}
    Input Text   ${emailTextfield}      ${ValidEmail}

I type "${product ID}" into this "${header search box}" field
    Wait Until Element is Visible   ${homepage}     timeout=${globaltimeout}
    #Wait Until Page Contains    Search  timeout=120s
    Click Text  Search
   # Wait Until Page Does Not Contain Element    ${progressbar}  timeout=220s
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    #Verify Screen Displays Element  ${header search box}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${product ID}
    Press Keycode   84

I click on text
    [Arguments]  ${text}
    Wait Until Page Contains    ${text}     timeout=${globaltimeout}
    Click Text  ${text}

I click on Element
    [Arguments]  ${Element}
    Wait Until Page Contains    ${Element}     timeout=${globaltimeout}
    Click Element  ${Element}

I scroll down the page
    sleep   ${globalmaxsleep}
    Swipe By Percent  50  90  50  10
    sleep   ${globalmaxsleep}
