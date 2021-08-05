*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
Go to HomePage (Promotional Banner Close)
    [Tags]  HP_TC01
    Given I am on the app
    Verify Screen Contains Element  ${homepage_promobanner}
    And Verify Screen Contains Element  ${close}
    Then I click on Element  ${close}
    Verify page doesnot contain Element  ${close}
    Capture Page Screenshot  homepage.png
    Log Source
    Close Application

    
Go to HomePage (Promotional Banner Input)
    [Tags]  HP_TC02
    Given I am on the app
    And Verify Screen Contains Element  ${email_field}
    #And I click on Element  ${email_field}
    And Input Text into  ${email_field}  ${email_id}
    Verify Page Contains Text  GET MY OFFER
    Click Text  GET MY OFFER
    Verify Page Contains Text  THANK YOU
    Log Source
    Capture Page Screenshot  thankyou.png
    Close Application
    
