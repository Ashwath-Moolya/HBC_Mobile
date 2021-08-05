*** Settings ***
Library    AppiumLibrary
Library    String
Resource  ../../Resources/common_page_objects/locators.robot   
Resource  ../../Resources/Data/Testdata.robot
Resource  ../../Resources/common_page_objects/homepage.robot
Resource  ../../Resources/common_page_objects/productsearch.robot

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

Verify Screen Contains Element
    [Arguments]     ${ExpectedElement}
    Wait Until Page Contains Element    ${ExpectedElement}      timeout=${globaltimeout}

Verify Page Contains Text
    [Arguments]  ${ExpectedText}
    Wait Until Page Contains    ${ExpectedText}  timeout=${globaltimeout}
    
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
    Wait Until Element is Visible   ${bag}      timeout=${globalmaxsleep}
    Click Element   ${bag}

Email subcription
    Wait Until Element is Visible   ${shop}      timeout=${globalmaxsleep}
    Click Element   ${shop}
    Input Text   ${emailTextfield}      ${ValidEmail}

I input "${product_ID}" into this "${header search box}" field
    Wait Until Element is Visible   ${homepage}     timeout=${globalmaxsleep}
    Click Text  Search
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${product_ID}
    #Press Keycode   84
    Press Keycode   4
    Verify Page Contains Text  V-Neck Cropped Cardigan
    Swipe By Percent  50  90  50  10    
    

I type "${brand_name}" into this "${header search box}" field
    Wait Until Element is Visible   ${homepage}     timeout=${globalmaxsleep}
    Click Text  Search
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${brand_name}
    Press Keycode  4
    Sleep  20s
    Swipe By Percent  50  90  50  20  
    
    Log Source

I give "${product_term}" into this "${header search box}" field
    Wait Until Element is Visible   ${homepage}     timeout=${globalmaxsleep}
    Click Text  Search
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${product_term}
    Press Keycode   84

I enter "${wild_card}" into this "${header search box}" field
    Wait Until Element is Visible   ${homepage}     timeout=${globalmaxsleep}
    Click Text  Search
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${wild_card}

#I click on Element
    #[Arguments]  ${Element}
    #Wait Until Page Contains    ${Element}     timeout=${globaltimeout}
    #Click Element  ${Element}

#I scroll down the page
    #sleep   ${globalmaxsleep}
    #Swipe By Percent  50  90  50  10
    #sleep   ${globalmaxsleep}


I click on Text
    [Arguments]  ${email_field1}
    Click Text  ${email_field1}
    
I click on Element
    [Arguments]  ${email_field2}
    Click Element  ${email_field2}
    
Input Text into
    [Arguments]  ${email_field3}  ${email_id1}
    Input Text  ${email_field3}  ${email_id1}

#common method
Verify page doesnot contain Element
    [Arguments]  ${Element}
    Wait Until Page Does Not Contain Element  ${Element}  timeout=${globalmaxsleep}

