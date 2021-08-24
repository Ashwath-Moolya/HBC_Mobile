*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***

Search for a product by
    [Tags]  SE_TC01  Sanity
    Given I am on the app
    And I type data into text field  ${product_term1}  ${header search box}
    Press enter key on device keypad
    Log Source
    Verify Page Contains Text  Filter
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    And I Scroll down to text  Color
    Sleep  10s
    Log Source
    Click Element  xpath=(//android.widget.RadioButton[@class='android.widget.RadioButton'])[1]
    Sleep  10s
    Click Element  xpath=(//android.widget.RadioButton[@class='android.widget.RadioButton'])[4]
    Sleep  10s
    Click Text  ADD TO BAG
    Sleep  10s
    Click Text  Bag
    Verify Page Contains Text  Shopping Bag  


Search & Add a product to the bag
    [Tags]  Demo
    Given I am on the app
    And I type data into text field  ${product_term}  ${header search box}
    Press enter key on device keypad
    Verify Screen Contains Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Collect the first product details in plp
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    And I Scroll down to text  Size
    And I Select available color and sizes
    And I Add product to Bag
    And Click Text  Bag
    And Verify Page Contains text  Shopping Bag (1)
    And Verify Page Contains text  ${pname}
    Capture Page Screenshot  sb01.png
    
Increase/decrease quantity from Shopping Bag
    [Tags]  SB_TC02
    Given I am on the app
    And I type data into text field  ${product_term2}  ${header search box}
    Press enter key on device keypad
    Verify Screen Contains Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    When I Scroll down to text  Size
    And I Select available color and sizes
    And I Add product to Bag
    And Click Text  Bag
    And Increase the product quantity
    And Decrease the product quantity
    Sleep  10s
    Capture Page Screenshot  sb02.png

Remove or Delete product from Shopping Bag
    [Tags]  SB_TC03
    Given I am on the app
    And I type data into text field  ${product_term2}  ${header search box}
    Press enter key on device keypad
    Verify Screen Contains Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    When I Scroll down to text  Size
    And I Select available color and sizes
    And I Add product to Bag
    And Click Text  Bag
    Then I Remove product from Bag
    Log Source
    Capture Page Screenshot  sb03.png
