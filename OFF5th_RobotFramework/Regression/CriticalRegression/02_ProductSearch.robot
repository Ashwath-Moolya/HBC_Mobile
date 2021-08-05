*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
Search for a product by product ID
    [Tags]  PS_TC01
    Given I am on the app
    And I input "${product_ID}" into this "${header search box}" field
    Capture Page Screenshot  ps01.png
    Log Source

Search for a product by brand name
    [Tags]  PS_TC02
    Given I am on the app
    And I type "${brand_name}" into this "${header search box}" field
    Capture Page Screenshot  ps02.png
    
    
Search for a product by brand name
    [Tags]  PS_TC03
    Given I am on the app
    And I give "${product_term}" into this "${header search box}" field
    Capture Page Screenshot  ps03.png
    Log Source

Search for a product by wildcard '*'
    [Tags]  PS_TC04
    Given I am on the app
    And I enter "${wild_card}" into this "${header search box}" field
    Capture Page Screenshot  ps04.png
    Log Source