*** Settings ***
Resource  ../../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
    
Add a product to Shopping Bag
    [Tags]  SB_TC01
    Given I am on the app
    And I type data into text field  ${product_term1}  ${header search box}
    Sleep  10s
    # And I Scroll down to text  Cole Haan
    # Click Text  Cole Haan
    # And I Scroll down to text  Color
    # Sleep  10s
    # Log Source
    # #Click Element  xpath=//android.widget.RadioButton/android.widget.RadioButton[1]/android.widget.RadioButton[1]
    # #Click Element  xpath=//android.widget.Button/android.widget.Button[1]/android.widget.Button[1]
    # Click Text  Select Color COGNAC
    # Sleep  10s
    # Click Element  xpath=//android.view.View[@content-desc="32"]
    # Sleep  10s
    # Click Text  ADD TO BAG
    # Sleep  15s
    # Click Text  Bag
    # Sleep  15s
    # Capture Page Screenshot  sb01.png
    Log Source