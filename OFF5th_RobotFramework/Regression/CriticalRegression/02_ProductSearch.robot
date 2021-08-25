*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
Search for a product by product ID
    [Tags]  PS_TC01
    Given I am on the app
    And I type data into text field  ${product_ID}  ${header search box}
    Verify Page Contains Text  6MM Yoga Mat
    And I Scroll down to text  VIEW ALL
    Capture Page Screenshot  ps01.png
    Close Application
    
Search for a product by brand name
    [Tags]  PS_TC02
    Given I am on the app
    And I type data into text field  ${brand_name}  ${header search box}
    And I Scroll down to text  VIEW ALL
    Capture Page Screenshot  ps02.png
    Close Application
            
Search for a product by product term
    [Tags]  PS_TC03
    Given I am on the app
    And I type data into text field  ${product_term}  ${header search box}
    And I Scroll down to text  VIEW ALL
    Capture Page Screenshot  ps03.png
    Close Application
   
Search for a product by wildcard '***'
    [Tags]  PS_TC04
    Given I am on the app
    And I enter data into text field  ${wild_card}  ${header search box}
    And Press enter key on device keypad
    Verify Page Contains Text  Filter
    Verify Page Contains Text  "***"
    Capture Page Screenshot  ps04.png
    Close Application
    
    