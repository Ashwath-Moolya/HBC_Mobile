*** Settings ***
Library    AppiumLibrary 
Resource  ../Resources/common_page_objects/locators.robot   
Resource  ../Resources/common_definitions/commonsfcc.robot

*** Test Cases ***
TC-01 SaksOFF5th login Functionality
   Given Launch the saksOFF5th application
   Then Verify Screen Displays Element   ${accountlink}
   When Login to Application

TC-02 Search a product
  Given Launch the saksOFF5th application
  Then Verify Screen Displays Element   ${accountlink}
  When Search a product   ${productid}


TC-03 Email subcription
  Given Launch the saksOFF5th application
  When Email subcription

TC-04 login
    User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials