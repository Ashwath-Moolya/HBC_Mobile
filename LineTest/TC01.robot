*** Settings ***
Library    AppiumLibrary
Resource  ../Resources/flipkartLocators.robot
Resource  ../Resources/my_orders.robot
Resource  ../Resources/common.robot
Resource  ../Resources/menu.robot
Resource  ../Resources/Electronics.robot

#Suite Setup  Begin Mobile Test
#Suite Teardown  Close flipkart Application
#Test Setup  Launch the Application
#Test Teardown  Quit flipkart Application

#robot -d Results Tests/TC01.robot
#robot -d Results -L Debug  -i order Tests

*** Test Cases ***

User should be able to Place their desired product in the Cart
    [Tags]    order
    Given User is allowed to launch Flipkart app
    When User navigates to the Electronics Section from Menu
    And navigates to Mouse Sub_Section from Computer Accessories
    And User Searches for the Desired Product  ${Item_Name}
    Then User adds the desired product to the cart successfully

Verify the Cancelled item in My Orders
    [Tags]    cancel
    Given User is allowed to launch Flipkart app
    When User naviggates to My_Order Section from Menu
    Then Cancelled item should be listed in the My Order Section  ${cancel_content}
    And Visit back to main menu