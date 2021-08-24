*** Settings ***
Library    AppiumLibrary
Library    String
Resource  ../../Resources/common_page_objects/locators.robot   
Resource  ../../Resources/Data/Testdata.robot
Resource  ../../Resources/common_page_objects/homepage.robot
Resource  ../../Resources/common_page_objects/searchresultspage.robot
#Resource  ../../Resources/common_page_objects/productsearch.robot

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
        # ...    app=${APP}
   # sleep  60s

Verify Screen Element
        [Arguments]     ${ExpectedElement}
    Wait Until Element is Visible   ${ExpectedElement}      timeout=${globaltimeout}

Verify Screen Contains Element
    [Arguments]     ${ExpectedElement}
    Wait Until Page Contains Element    ${ExpectedElement}      timeout=${globalmaxsleep}

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

I type data into text field
    [Arguments]  ${text}  ${element}
    Verify Page Contains Text  Search
    Click Text  Search
    Wait Until Element is Visible    ${element}       timeout=${globaltimeout}
    Click Element   ${element}
    Input Text   ${element}      ${text}
    Press Keycode   4
    
I enter data into text field
    [Arguments]  ${text}  ${element}
    Verify Page Contains Text  Search
    Click Text  Search
    Wait Until Element is Visible    ${element}      timeout=${globaltimeout}
    Click Element   ${element}
    Input Text   ${element}  ${wild_card}
    #Wait Until Page Contains  Sorry  timeout=${globaltimeout}


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


I Scroll down to text
    [Arguments]  ${text}
    FOR  ${i}  IN RANGE  1  100
        ${pass} =  Run Keyword And Return Status  Wait Until Page Contains  ${text}  timeout=${globalminsleep}
        Exit For Loop If  '${pass}' == 'True'
        Swipe By Percent  50  80  50  25
    END

I Type into the product search field
    Wait Until Element is Visible   ${homepage}     timeout=${globalmaxsleep}
    Click Text  Search
    Wait Until Element is Visible    ${header search box}       timeout=${globaltimeout}
    Click Element   ${header search box}
    Input Text   ${header search box}      ${product_ID}
    Press Keycode   4

Press enter key on device keypad
    Sleep  15s
    Press Keycode  115
    Sleep  5s
    Press Keycode  66

I Add product to Bag
    Sleep  5s
    And Click Text  ADD TO BAG
    Sleep  10s
    

I Remove product from Bag
    Sleep  20s
    #Verify Page Contains Text  Remove product
    Click Text  Remove product
    Sleep  10s
    Verify Page Contains Text  Shopping Bag (0)
    #Wait Until Element is Visible  xpath=//android.widget.Button[@class="android.widget.Button"]  timeout=${globalmaxsleep}

Increase the product quantity
    Sleep  10s
    Click Text  Increase quantity by one
    Log Source
    Verify Page Contains Text  Increase quantity by one
    Sleep  10s
    Click Text  Increase quantity by one
    Sleep  10s
    ${Acutal_quantity} =  Extract text from the app  xpath=//android.widget.EditText[@class="android.widget.EditText"]
    Should Be Equal  ${Acutal_quantity}  3.0

Decrease the product quantity
    Sleep  10s
    Click Text  Decrease quantity by one
    Sleep  10s
    ${Acutal_quantity} =  Extract text from the app  xpath=//android.widget.EditText[@class="android.widget.EditText"]
    Should Be Equal  ${Acutal_quantity}  2.0

Extract text from the app
    [Arguments]  ${ExpectedElement}
    Verify Screen Contains Element  ${ExpectedElement}
    ${text} =  Get Text  ${ExpectedElement}
    [Return]  ${text}

Return status if text visibile
    [Arguments]  ${text_exp}
    ${pass} =  Run Keyword And Return Status  Verify Page Contains Text   ${text_exp}
    Log to Console  ${pass}
    [Return]  ${pass}

Collect the first product details in plp
    ${pname}  Get Text  ${productnameLocator}
    Log To Console  ${pname}
    Set Suite Variable  ${pname}  ${pname}
    
I Select available color and sizes
    ${color_count}  Get Matching Xpath Count  //android.widget.RadioButton[contains(@text, "Select Color")]
    ${size_count}  Get Matching Xpath Count  //android.view.View[@text='Size']/android.view.View[2]/android.widget.RadioButton
    Log to Console  ${color_count}
    Log to Console  ${size_count}

    Run Keyword If  '${color_count}' == '0'  Select available Size for product  ${size_count}
        ...  ELSE IF  '${size_count}' == '0'  Select available color for product  ${color_count}
        ...  ELSE  Select both available color and size  ${color_count}  ${size_count}

Select available color for product
    [Arguments]    ${colorlen}
    Log to Console  EXECUTING IF
    FOR  ${i}  IN RANGE  1  ${colorlen}
        Click Element  xpath=(//android.widget.RadioButton[contains(@text, "Select Color")])[${i}]
        Log to Console  ${i}
        Verify Screen Contains Element  xpath=(//android.widget.RadioButton[contains(@text, "Select Color")])[${i}]
        Sleep  5s
        ${text_stat} =  Return status if text visibile  ADD TO BAG
        Log to Console  ${text_stat}
        Set Suite Variable  ${text_stat}  ${text_stat}
        Exit For Loop If  "${text_stat}" == "True"
    END

Select available Size for product
    [Arguments]    ${sizeLen}
    Log to Console  EXECUTING IF
    FOR  ${j}  IN RANGE  1  ${sizeLen}
            Log to Console  ${j}
            Verify Screen Contains Element  xpath=(//android.view.View[@text='Size']/android.view.View[2]/android.widget.RadioButton)[${j}]
            Click Element  xpath=(//android.view.View[@text='Size']/android.view.View[2]/android.widget.RadioButton)[${j}]
            Sleep  15s
            ${text_stat} =  Return status if text visibile  ADD TO BAG
            Log to Console  ${text_stat}
            Set Suite Variable  ${text_stat}  ${text_stat} 
            Exit For Loop If  "${text_stat}" == "True"
    END

Select both available color and size
    [Arguments]     ${colorc}  ${sizec}
    Log to Console  EXECUTING ELSE
    FOR  ${i}  IN RANGE  1  ${colorc}
        Click Element  xpath=(//android.widget.RadioButton[contains(@text, "Select Color")])[${i}]
        Log to Console  ${i}
        Verify Screen Contains Element  xpath=(//android.widget.RadioButton[contains(@text, "Select Color")])[${i}]
        Sleep  10s
        Select correct available Size for product  ${sizec}
        Exit For Loop If  "${text_stat}" == "True"
    END

Select correct available Size for product
    [Arguments]    ${sizeLen}
    FOR  ${j}  IN RANGE  1  ${sizeLen}
            Log to Console  ${j}
            Verify Screen Contains Element  xpath=(//android.view.View[@text='Size']/android.view.View[2]/android.widget.RadioButton)[${j}]
            Click Element  xpath=(//android.view.View[@text='Size']/android.view.View[2]/android.widget.RadioButton)[${j}]
            Sleep  5s
            ${text_stat} =  Return status if text visibile  ADD TO BAG
            Log to Console  ${text_stat}
            Set Suite Variable  ${text_stat}  ${text_stat} 
            Exit For Loop If  "${text_stat}" == "True"
    END

