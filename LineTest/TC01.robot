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

User should be able to Place Order
    [Tags]    order
    Begin Mobile Test
    Go to Electronics Section from Menu
    Go to Mouse Sub_Section from Computer Accessories
    Search for the Desired Product  ${Item_Name}
    Add Desired Product to the kart

Verify the Cancelled item in My Order
    [Tags]    cancel
    Begin Mobile Test
    Go to My_Order Section from Menu
    Verify cancelled item listed  ${cancel_content}
    Visit back to main menu