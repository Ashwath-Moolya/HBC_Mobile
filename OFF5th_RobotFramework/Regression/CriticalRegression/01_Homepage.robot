*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
Go to HomePage (Promotional Banner Close)
    [Tags]  HP_TC01
    Given I am on the app
    When Verify Screen Contains Element  ${homepage_promobanner}
    And Verify Screen Contains Element  ${close}
    When I click on Element  ${close}
    And Verify page doesnot contain Element  ${close}
    Then Capture Page Screenshot  homepage.png
    Quit Application

    
Go to HomePage (Promotional Banner Input)
    [Tags]  HP_TC02
    Given I am on the app
    When Verify Screen Contains Element  ${email_field}
    And Input Text into  ${email_field}  ${email_id}
    And Verify Page Contains Text  GET MY OFFER
    When Click Text  GET MY OFFER
    And Verify Page Contains Text  THANK YOU
    Then Capture Page Screenshot  thankyou.png
    Quit Application    
