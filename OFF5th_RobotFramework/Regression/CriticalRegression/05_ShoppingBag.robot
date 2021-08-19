*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***

Search for a product by
    [Tags]  SE_TC01
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


Search for a product by iteration
    [Tags]  Demo
    Given I am on the app
    And I type data into text field  ${product_term}  ${header search box}
    Press enter key on device keypad
    Verify Screen Contains Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Sleep  20s
    And I Scroll down to text  Size
    And I Select available color and sizes
    And Click Text  ADD TO BAG 
    Sleep  10s
    Log Source
    Capture Page Screenshot  sb01.png
    
    # #Verify Page Contains Text  Shopping Bag 
    
    # Verify Page Contains Text  Increase quantity by one
    # Click Text  Increase quantity by one
    # Click Text  Increase quantity by one
    # Sleep  20s
    # #Get Text  xpath=//android.widget.EditText[@text='Current quantity']
    # #Sleep  20s
    # Click Text  Decrease quantity by one
    # Sleep  10s
    # Log Source
    # Capture Page Screenshot  sb01.png

Search for a product by iteration
    [Tags]  SB_TC03
    Given I am on the app
    And I type data into text field  ${product_term2}  ${header search box}
    Press enter key on device keypad
    Verify Screen Contains Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    Click Element  xpath=(//android.view.View[@content-desc='product images'])[1]
    When I Scroll down to text  Size
    And I Select available color and sizes
    And I Add product to Bag
    When I Remove product from Bag
    Log Source
    Capture Page Screenshot  sb03.png
