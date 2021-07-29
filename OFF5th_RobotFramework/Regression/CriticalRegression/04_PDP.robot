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

*** Test Cases ***
Test case name 
    Given I am on the app