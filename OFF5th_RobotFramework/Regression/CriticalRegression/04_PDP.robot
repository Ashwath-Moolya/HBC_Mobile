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


    

   