*** Settings ***
Library    AppiumLibrary 
#Locator file path
Resource  ../../Resources/common_page_objects/locators.robot  
Resource  ../../Resources/common_page_objects/login.robot
#Common functions 
Resource  ../../Resources/common_definitions/commonsfcc.robot
Resource  ../../Resources/common_definitions/account.robot
#TestData
Resource  ../../Resources/data/global.robot

#Robot -d Result OFF5th_RobotFramework/Regression/CriticalRegression/06_Accounts.robot
*** Test Cases ***
OFA_31 - Account - Create new account with valid details.
    Given I am on the app
    When I click on text  Account
    Verify Screen Displays text  CREATE ACCOUNT
    Then I scroll down the page
    And I click on text  CREATE ACCOUNT
    And Create new account with valid credentials
    And Verify Screen Displays text  ACCOUNT MENU
    And Verify Screen Displays text  ${accountfname}
